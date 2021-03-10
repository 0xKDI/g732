#!/usr/bin/env bash
# useful script to make multiple labs with latex

function makelab() {
    name_ru="$1"
    group="$2"
    name="$3"

    cp inc/title.tex inc/title_bac.tex
    sed -i -e "s/!group!/${group}/" -e "s|!name!|${name_ru}|" inc/title.tex
    echo -e "\033[0;32m========== ${name} ==========\033[0m"
    echo "job ${source}"
    latexmk -pvc- "${source}.tex" -jobname="${source}_${name}" > /dev/null 2>&1
    echo "job ${source} [DONE]"
    mv inc/title_bac.tex inc/title.tex 
}

function archive() {
    name_ru="$1"
    group="$2"
    name="$3"

    echo "Archiving ${source}"
    7z a "${name}.zip" "${source}_${name}.pdf" > /dev/null
    echo "Archiving ${source} [DONE]"
}

function cleanup() {
if [ -f "${source}.pdf" ]; then
    rm "${source}.pdf"
fi

rm -drf *.log *.aux _minted-* *.out *.xdv *.fls *.fdb_latexmk > /dev/null 2>&1
}


if [ -z "$1" ]; then
    echo "$0: Specify job name!" 1>&2
    exit 1
fi

source="$(echo $1 | sed 's/\..*//')"


# Values are hardcoded since they are always the same
arr1=( "<NAME_1_RUS>" "<GROUP_A>" "<NAME_2_EN>" )
arr2=( "<NAME_2_RUS>" "<GROUP_B>" "<NAME_2_EN>" )
# ...

# Declare array of names of associative arrays
names=("${!arr@}")

# Declare loop variable as nameref
declare -n arr_ref

for arr_ref in "${names[@]}"; do
    makelab "${arr_ref[@]}"
    archive "${arr_ref[@]}"
done

cleanup
