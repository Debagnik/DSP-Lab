% Main driver program
% Written by Debagnik Kar 1804373

clear all
close all
clc

w = -2*pi:0.01:2*pi
n = 0:1:100
x = 0.5.^n

X = dtft(x, n, w)

subplot 221
plot(w/(pi),abs(X),'g')
ylabel('Magnitude')
xlabel('Frequency')
title('Magnitude plot')
subplot 223
plot(w/pi,angle(X),'r')
ylabel('Phase')
xlabel('Frequency')
title('Phase plot')
subplot 222
plot(w/pi,real(X),'g')
title('Real Plot')
xlabel('Frequency')
ylabel('Real part of f(x)')
subplot 224
plot(w/pi,imag(X),'r')
title('Imaginary Plot')
xlabel('Frequency')
ylabel('Imaginary part of f(x)')