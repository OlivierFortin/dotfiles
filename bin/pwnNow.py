#!/bin/python3

import os

template = """#!/bin/python3
from pwn import *

p = None
elf = None

if args.r:
    p = remote("{host}", {port})
else:
    p = process("{binary}")
    
if args.GDB:
    gdb.attach(p, '''
        tmux-setup
        symbole-file {binary}_dbg
''')

if args.ELF:
    elf = ELF("{binary}")



#find the buffer overflow
pattern = cyclic(100)
p.sendafter("!!!_MSG_!!!", pattern)
p.interactive()



"""


if __name__ == "__main__":

    # format the template
    template = template.format(host=args[0], port=args[1], binary=args[2])

    #create file locally named pwnChal.py in current directory
    os.system("touch pwnChal.py")
    #write template to file
    with open("pwnChal.py", "w") as f:
        f.write(template)
    #make file executable
    os.system("chmod +x pwnChal.py")


