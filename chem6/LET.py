import numpy as np
import os

energys = [0]
f = open('output.txt')
lines = f.readlines()

for line in lines:
    a = line.split(' ')
    if len(a)==0:
        break
    z = int((float(a[1])+float(a[2]))/200)
    if (z>=len(energys)):
        energys.append(0)
    energys[z] = energys[z]+float(a[4])

energy = np.array(energys)
np.save('energy.npy',energy)