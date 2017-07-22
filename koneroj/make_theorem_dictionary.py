import os

def get_theorem_name(file):
       #Name must be placed on the first line of the file with no whitespace
    def find_name_start(theorem_file):
        return 6
    
    def find_name_end(theorem_file ):
        source = open(theorem_file,'r') 
        return  source.readline().find(r'}')
    
    start = find_name_start(file)
    end = find_name_end(file)
    if end != -1:
        source = open(file,'r')
        firstline = source.readline()
        name = ''
        for x in range(start, end):
            name += firstline[x]
        return name

def add_file(root,name,sink):
    if(name.find('.koneroj')!=0):
        theorems = open(sink,'a')
        file_name = os.path.join(root,name)
        print file_name
        theorem_name = get_theorem_name(file_name)
        print theorem_name
        theorems.write(r"theorems['"+ theorem_name + "'] =" + "'"+file_name +"'"+'\n')
        theorems.close() 

def add_folder(folder, sink ):
   for root, dirs, files in os.walk(folder):
        print root
        if files != []:
            for name in files:
                add_file(root,name, sink)
                print os.path.join(root,name)

def main():
    sink = 'theorems.py'
    folders = ['home/jezri/Documents/koneroj_notes']
    theorems = open(sink,'w')
    theorems.write(r'theorems = {} '+'\n')
    theorems.close()
    for folder in folders:
        add_folder(folder, sink)
main()



