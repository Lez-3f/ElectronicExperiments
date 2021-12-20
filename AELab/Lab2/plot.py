'''
Autor: Zel
Email: 2995441811@qq.com
Date: 2021-10-26 15:27:56
LastEditors: Zel
LastEditTime: 2021-10-27 11:00:46
'''
import numpy as np
import matplotlib.pyplot as plt

# ube1 = np.array([0.504 , 0.537 , 0.555 , 0.572 , 0.574 , 0.578 , 0.590 , 0.597])
# ib1 = np.array([0.8   , 5.2   , 9.0   , 15.0  , 18.0  , 21.0  , 32.0  , 42.0 ])
# ube2 = np.array([0.635 , 0.648 , 0.658 , 0.667 , 0.678 , 0.680 , 0.681 , 0.682 ])
# ib2 = np.array([0.8  , 4.8   , 9.2   , 15.8  , 26.0  , 34.2  , 43.8  , 46.5 ])

# plt.figure()
# plt.xlim(0, 0.81)
# plt.ylim(0, 51)
# plt.xticks(np.arange(0, 0.81, 0.1))
# plt.yticks(np.arange(0, 51, 10))
# plt.xlabel("$u_{be}/V$")
# plt.ylabel("$I_B/\mu A$")

# plt.title("Input characteristic curve ")

# plt.plot(ube1 ,ib1)
# plt.plot(ube2 ,ib2)

# plt.legend(["$u_{ce}=0V$", "$u_{ce}=2V$"])
# plt.show()

# uce1 = [0.808 , 2.13 , 2.84 , 3.72 , 5.12 , 6.03 , 7.12 , 8.32]
# ic1 = [0.8  , 2.4 , 3.3 , 4.2 , 5.6 , 6.0 , 6.2 , 6.2]
# uce2=[1.09 , 1.90 , 2.76 , 3.50 , 4.37 , 5.80 , 7.20 , 8.24]
# ic2=[1.0 , 2.0 , 3.0 , 3.8, 4.0 , 4.0 , 4.0 , 4.0]
# uce3=[0.69 , 1.49 , 2.36 , 3.26 , 4.40 , 5.56 , 7.20 , 8.12]
# ic3=[0.8, 1.6 , 2.0 , 2.1 , 2.1 , 2.0 ,2.0 , 2.0 ]

# plt.figure()
# plt.xlim(0, 9)
# plt.ylim(0, 8)
# plt.xticks(np.arange(0, 9.1, 1))
# plt.yticks(np.arange(0, 8.1, 1))
# plt.xlabel("$u_{ce}/V$")
# plt.ylabel("$I_C/\mu A$")

# plt.title("outputcharacteristic curve ")

# plt.plot(uce1 ,ic1)
# plt.plot(uce2 ,ic2)
# plt.plot(uce3 ,ic3)

# plt.legend(["$I_B=34\mu A$", "$I_B=22\mu A$", "$I_B=10\mu A$"])
# plt.show()

plt.figure
lg_F = [1, 2, 2.7, 3, 3.7, 4, 5]
A= [2.32, 12.5, 30.46, 55.15, 104.56, 114.55, 121.62]
plt.plot(lg_F, A)
plt.xlim(1, 6)
plt.ylim(0, 150)
plt.xlabel("$\lg f/ \lg Hz$")
plt.ylabel("")
plt.title("Amplitude-frequency characteristic curve ")
plt.show()
