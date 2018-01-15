import numpy as np
import scipy as sy
import scipy.fftpack as syfp
import pylab as pyl


xvalues=[]
yvalues=[]

#reading csv data into array
my_data=np.genfromtxt("NewFile0.csv", delimiter=',')

#eliminating all NAN values
my_data=my_data[np.logical_not(np.isnan(my_data))]

#splitting mydata array into two arrays substracting dc offset from yvalues
xvalues=my_data[0::2]
yvalues=my_data[1::2]-11

#getting related frequencies
freq=np.fft.fftfreq(xvalues.size,d=xvalues[1]-xvalues[0])
freq=freq/1000000
Y=abs(np.fft.fft(yvalues)/len(xvalues)) #fast fourier transform normalized
ind=np.argpartition(Y,-12)[-12:]
maxval=freq[ind]

pyl.subplot(211)
pyl.title("Signal")
pyl.plot(xvalues,yvalues)
pyl.show
pyl.subplot(212)
pyl.bar(freq,Y,width=0.03)
for xy in zip(np.around(freq[ind],decimals=3),np.around(Y[ind],decimals=3)):
    pyl.annotate('(%s,%s)'% xy, xy=xy, textcoords='data',arrowprops=dict(facecolor='red',shrink=0.01),color='red')
pyl.xlabel("Frequency MHz")
pyl.ylabel("")
pyl.title("Abs. values FFT")
pyl.xlim(0)
pyl.axis([5.8,7.2,0,0.3])
pyl.show

