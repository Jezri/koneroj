#!/bin/bash
#pandoc Macro.md -f markdown -t latex -s -o macro.tex
runhaskell Macro.hs
pdflatex Macro.tex
