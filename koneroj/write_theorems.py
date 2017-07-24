from find_dependencies import* 
from theorems import*

def get_theorems(dependencies):
    theorem_files ={}
    for dependency in dependencies:
        found = False
        for theorem in theorems:
            print theorem  + '\t' + dependency
            if dependency == theorem:
                 theorem_files[dependency] =  theorems[dependency]
                 found = True
        if found == False:
            theorem_files[dependency] = 'None'
    return theorem_files

def write_theorems(new_file, main_file):
    dependencies = find_dependencies(main_file)
    print dependencies
    theorem_list = get_theorems(dependencies)  
    print theorem_list
    source = open(new_file,'a')
    if theorem_list != {}:
        source.write(r'\begin{description}'+'\n')
        source.close()
        for theorem in theorem_list:
            write_result(theorem , theorem_list[theorem] ,new_file)
        source = open(new_file,'a')
        source.write(r'\end{description}')

def write_result (theorem_name,theorem_file ,new_file):
    new_code = open(new_file,'a')
    new_code.write(r'\item['+ theorem_name +']')
    if theorem_file != 'None':
        new_code.write('\emptyall' +'\n\t'+r'\input{' + theorem_file + '} \n \b '+r'\result' + '\n\t' + r'\definition')
    else:
        new_code.write('Could not find a file')
    new_code.close()




