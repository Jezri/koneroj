#!/bin/bash
#runhaskell LA.hs
pandoc LA.markdown -f markdown -t latex --template=temp.latex -s -o LA.tex
pdflatex LA.tex
