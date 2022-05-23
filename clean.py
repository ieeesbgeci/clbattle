import os
import sys

lvl=sys.argv[1]
required= set()
with open(f'/{lvl}/required.txt') as f:
     for line in f:
         required.add(line.strip())

for f in os.listdir(f'/home/{lvl}/'):
    if f not in required:
        os.os.system(f"rm -rf {f}")