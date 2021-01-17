clc
clear all
close all
n = 1
w = linspace(-pi,pi,500)
x1 = [1,3,5,7,9,11,13,15,17]
x2 = [1,-2,3,-2,1]
y = conv(x1,x2)
h1 = freqz(x1',n,w)
h2 = freqz(x2',n,w)
h12 = h1.*h2
h3 = freqz(y',n,w)

subplot 221
plot(w,abs(h12))
subplot 222
plot(w,abs(h3))
subplot 223
plot(w,angle(h12))
subplot 224
plot(w,angle(h3))