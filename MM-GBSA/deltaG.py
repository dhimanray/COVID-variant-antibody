import numpy as np

l1 = np.loadtxt('total/mmgbsa.dat')
l2 = np.loadtxt('antibody/mmgbsa.dat')
l3 = np.loadtxt('rbd/mmgbsa.dat')

G = l1[:,1] - l2[:,1] - l3[:,1]

np.savetxt('freeE_each_frame.dat',G,fmt='%0.2f')
