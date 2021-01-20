% Program for analysing DTFT Functions
% Writting by Debagnik Kar 1804373

clc
clear all
close all

n = 1
w = linspace(-pi,pi,500)
x1 = [1,3,5,7,9,11,13,15,17]
x2 = [1,-2,3,-2,1]

y = conv(x1,x2)
h1 = freqz(x1,n,w)
h2 = freqz(x2,n,w)
h12 = h1.*h2
h3 = freqz(y',n,w)

subplot 321
stem(x1,'k')
title('Input Sequence one')

subplot 322
stem(x2,'k')
title('Input Sequence two')

subplot 323
plot(w/pi,abs(h12),'g')
title('Magnitude Plot of f(x) without using Convolution')

subplot 324
plot(w/pi,abs(h3),'r')
title('Magnitude Plot of f(x) with using Convolution')

subplot 325
plot(w/pi,angle(h12),'g')
title('Phase Plot of f(x) without using Convolution')

subplot 326
plot(w/pi,angle(h3),'r')
title('Phase Plot of f(x) without using Convolution')
