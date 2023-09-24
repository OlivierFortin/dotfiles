#!/bin/sh
# call pdflatex with firts argument 
pdflatex -synctex=1 -interaction=nonstopmode $1
rm -r -f *.aux *.log *.lof *.gz *.toc *.bak~ *.out *.nav *.snm *.vrb *.synctex.gz

