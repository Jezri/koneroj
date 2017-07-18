from theorems import *
from latex import *
from write_theorems import*
import sys

def get_code_name(main_file):
    code_name=''
    for i in range(0,  len(main_file)-3):
        code_name+= main_file[i]
    return code_name

def write_preamble(new_file,main_file):
    new_code = open(new_file,'w')
    new_code.write('\documentclass{article} \n \t \usepackage{standalone} \n \t \usepackage{koneroj} \n \t'''+ r'\begin{document}')
    new_code.close() 

def write_source(new_file, main_file):
    new_code = open(new_file,'a')
    new_code.write('\emptyall \n \input{' + main_file+'} \n \writeall \n')
    new_code.close()
   
def end_document(new_file):
    new_code = open(new_file, 'a')
    new_code.write("\end{document}")
    new_code.close()
    
def  make_pdf(new_file,code_name):
    pdf = build_pdf(open(new_file))
    pdf.save_to(code_name+'.pdf ')

def compile():
    main_file = sys.argv[1]
    code_name = get_code_name(main_file)
    new_file = code_name +'koneroj'
    write_preamble(new_file,main_file)
    write_source(new_file, main_file)
    write_theorems(new_file, main_file)
    end_document(new_file)
    #make_pdf(new_file,code_name)

if __name__== '__main__':
    compile()
