#!/bin/bash
pandoc Macro.markdown -f markdown -t latex --template=temp.latex -s -o Macro.tex
#runhaskell Macro.hs
pdflatex Macro.tex
