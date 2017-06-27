import re
from theorems import *
def get_theorems(dependencies):
    theorem_files ={}
    for dependency in dependencies:
        for theorem in theorems:
            if dependency == theorem:
                 theorem_files[theorem] =  theorems[theorem]
    return theorem_files

def find_dependencies(file):
    f = open(file,'r')
    a =( re.split(r'(\\dependency\{.*?\})', f.read()))
    f.close()
    dependencies = []
    for string in a:
        if (re.search(r'\\dependency\{.*?}', string, re.M|re.I )):
             if (string[12:-1]) != '':
                dependencies += [(string[12:-1])]
    return(dependencies)

