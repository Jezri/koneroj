import compiler
from theorems import *
from latex import *
from write_theorems import*
import sys

def makebook(list, name):
    new_file = name + '.koneroj'
    write_book_preamble(new_file)
    for item in list:
        main_file = item
        code_name = compiler.get_code_name(main_file)
        compiler.write_source(new_file, main_file)
        compiler.write_theorems(new_file, main_file)
    compiler.end_document(new_file)
    
def get_code_name(main_file):
    code_name=''
    for i in range(0,  len(main_file)-3):
        code_name+= main_file[i]
    return code_name

def write_section_preamble(new_file):
    new_code = open(new_file,'w')
    new_code.write('\documentclass{standalone} \n \t \usepackage{standalone} \n \t \usepackage{koneroj} \n \t'''+ r'\begin{document}')
    new_code.close(  ) 

def write_book_preamble(new_file):
    new_code = open(new_file,'w')
    new_code.write('\documentclass{article} \n \t \usepackage{standalone} \n \t \usepackage{koneroj} \n \t \emptyall'''+ r'\begin{document}')
    new_code.close(  ) 



