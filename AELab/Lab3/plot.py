'''
Autor: Zel
Email: 2995441811@qq.com
Date: 2021-11-07 18:23:27
LastEditors: Zel
LastEditTime: 2021-11-07 18:36:17
'''
import numpy as np
import matplotlib.pyplot as plt

f = np.array([10,20,40,70,100,1000,10000,100000])
log_f = np.log10(f)

u_o = np.array([0.175 , 0.342 , 0.564 , 0.684 , 0.905 , 1.02 , 1.06 , 1.04])

plt.figure()
plt.plot(log_f, u_o)
plt.xlim(1, 5)
plt.ylim(0, 1.2)
plt.xlabel("$\log f$")
plt.ylabel("$U_{O}/VPP$")
plt.show()