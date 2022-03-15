import numpy as np

l1 = np.loadtxt('mutual_info_100-200ns.txt')
l2 = np.loadtxt('mutual_info_200-300ns.txt')
l3 = np.loadtxt('mutual_info_300-400ns.txt')
l4 = np.loadtxt('mutual_info_400-500ns.txt')

lavg = 0.25*(l1+l2+l3+l4)

lmse = np.sqrt(0.33*((l1-lavg)**2 + (l2-lavg)**2 + (l3-lavg)**2 + (l4-lavg)**2))

np.savetxt('mutual_info_avg.txt',lavg)
np.savetxt('mutual_info_err.txt',lmse)
