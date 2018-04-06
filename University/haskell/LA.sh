#!/bin/bash
#runhaskell LA.hs
pandoc LA.markdown -f markdown -t latex -s -o LA.tex
pdflatex LA.tex
