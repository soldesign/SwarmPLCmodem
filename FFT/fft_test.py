import csv
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

#synthetic sine wave

t = np.linspace(0, 2*np.pi, 1000, endpoint=True)
f = 3.0 # Frequency in Hz
A = 100.0 # Amplitude in Unit
s = A * np.sin(2*np.pi*f*t) # Signal


plt.plot(t,s)
plt.xlabel('Time ($s$)')
plt.ylabel('Amplitude ($Unit$)')

Y=np.fft.fft(s)
plt.plot(Y)



N = len(Y)/2+1
Y[N-4:N+3]

plt.plot(np.abs(Y))
