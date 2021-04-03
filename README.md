# G732

This repo contains latex style for GOST 732 (Russian standart for research papers),
some scripts that I used with the style and reusable material like [titles](titles).

## Requirements:

- **texlive-full** or **texlive-small** and additional packages [See](shell.nix).
- **microsoft fonts** (Times new Roman)
- **python-pygments**
- **xelatex** with shell escape (for minted package)

## Instalation
Just copy [g732.sty](g732.sty) to ```$HOME/texmf/tex/latex/g732``` on Linux.

or link directly from repo:
```
./link.sh
```

## Usage
I use latexmk with **zathura** pdf viewer for writing papers.
See [latexmkrc.rb](latexmkrc.rb) for the example configuration.

**NOTE:** Rc file must exist in a root of the latex project as ```.latexmkrc``` or as ```$HOME/.config/latexmk/latexmkrc```
for user wide configuration.

## Results
See [releases](https://github.com/0qq/g732/releases)
