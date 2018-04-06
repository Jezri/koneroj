#!/bin/bash
runhaskell MVC.hs
#pandoc MVC.markdown -f markdown -t latex -s -o MVC.tex 
pdflatex MVC.tex

