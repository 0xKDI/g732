#!/usr/bin/env bash

STYLE_PATH=${TEXMFHOME:-~/texmf/tex/latex/}/g732
STY=g732.sty
mkdir -p $STYLE_PATH
ln -s $PWD/$STY -t "$STYLE_PATH"

