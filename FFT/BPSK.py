"""Script to experiment with signal modulation and analysis regarding BPSK"""
#modules
import matplotlib.pyplot as plot
import numpy as np
from scipy import signal
import pylab as pyl
#import sys

"""Init"""
Fs=50.0*10**6                          #Sampling rate in Herz
Ts=1.0/Fs                       #Sampling interval in seconds
#t=np.arange(0,(Ts),Ts)     #create array with time values for Ts as step

freq=6.5*10**6                      #carrier frequency in Herz
psk=-90                          #Phaseshift in degrees
bps=19200           

"""PSK init"""
bit_arr=np.array([psk,psk,0,psk,0,psk,psk,0])
samples_per_bit=Fs/bps
dd=np.repeat(bit_arr,samples_per_bit)                 #array for phase shift values has to be same size as t
#Ts=((1/19200.0))/len(dd)
t=np.arange(0,Ts*len(dd),Ts)                         #array with time values for period has to be same size as dd
y=np.sin((2*np.pi*freq)*t+(np.pi*dd/180))           #

n=len(y)
k=np.arange(n)
T=n/Fs
frq=k/T
frq=frq[range(n/2)]/10**6

Y=np.fft.fft(y)/n
Y=Y[range(n/2)]

pyl.subplot(211)
pyl.title('Simulated BPSK')
pyl.plot(t,y)
#pyl.axis([0.00232095,0.00234488,-1.5,1.5])
pyl.show

pyl.subplot(212)
pyl.bar(frq,abs(Y),width=0.0005, color='red')
pyl.xlabel("Frequency MHz")
pyl.ylabel("")
pyl.title("Abs. values FFT")
pyl.axis([6.44,6.56,0,0.4])
pyl.show
pyl.savefig('FFT_simulated_BPSK.png')




"""
fig,myplot=plot.subplots(2,1)
myplot[0].plot(t,y)
myplot[0].set_xlabel('Time')
myplot[0].set_ylabel('Amplitude')

myplot[1].plot(frq,abs(Y),'r')
myplot[1].set_xlabel('Freq (Hz)')
myplot[1].set.ylabel('|Y Freq|')

plot.show()
"""