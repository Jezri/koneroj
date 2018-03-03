#!/bin/bash
pandoc MVC.md -f markdown -t latex -s -o MVC_temp.tex 
pdflatex MVC_temp.tex
