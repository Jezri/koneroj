from module import *
class writable_module(module):
    def __init__(self,name):
        module.__init__(self,name)
        self.minor_modules = {}
    def get_preamble(self):
        temp = r"""
\documentclass{article}      
    \usepackage{fancyhdr}
    \usepackage{mathtools}
    \usepackage{amssymb}
    \pagestyle{fancy}
\begin{document}  
     \fancyhead[L]{"""+self.name.desplay + r"""}
        """
        return temp
    preamble = property(get_preamble)   
	
    def write_module_doc(self):
        self.assemble()
        f = open( self.name.code + r'.tex',"w")
        f.write(self.preamble)
        f.write(self.write_module())
        f.write(self.write_extras())
        f.write(self.write_techniques())
        f.write(self.write_theorems())
        f.write(self.write_concepts())
        for minor_module in self.minor_modules:
            f.write("\section*{" + minor_module+"}"+ self.minor_modules[minor_module].write_module())
        f.write(r'\end{document}')
        f.close
		
