#!/bin/bash
runhaskell IA.hs
#pandoc IA.markdown -f markdown -t latex -s -o IA.tex
pdflatex IA.tex
