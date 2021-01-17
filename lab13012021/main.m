%test file
clear all
close all
clc

w = -2*pi:0.01:2*pi;
n = 0:1:100;
w0 = 2;
x = 0.5.^n

X = dtft(x, n, w);
subplot 221
plot(w/(pi),abs(X))
subplot 222
plot(w/pi,angle(X))
subplot 223
plot(w/pi,real(X))
subplot 224
plot(w/pi,imag(X))