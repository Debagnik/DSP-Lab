% main.m Driver and plotting program 
% Coded by Debagnik Kar 1804373
% Used sequences h = [0,5,3,1,6,8,9,2,4,7]; x = [0,1,2,3,4,5,6,7,8,9]
close all
clear all
clc

x=input('Enter the first sequence : ')
h=input('Enter the second sequence: ')

N = max(length(x),length(h))
cc = circonv(x,h,N)
lc = linearconv(x,h)
[t1,rxh] = corel(x,h)
[t2,rhx] = corel(h,x)
[t3,rxx] = corel(x,x)

subplot 421
stem(x,'filled','r')
title('First Input Sequence')
xlabel('Samples')
ylabel('Amplitude')
grid on

subplot 422
stem(h,'filled','k')
title('Second Input Sequence')
xlabel('Samples')
ylabel('Amplitude')
grid on

subplot 423
stem(cc,'filled','g')
title('Circular Convolution')
xlabel('Samples')
ylabel('Amplitude')
grid on

subplot 424
stem(lc,'filled','c')
xlabel('Samples')
ylabel('Amplitude')
title('Linear Convolution')
grid on

subplot 425
stem(t2,rxh,'filled','b')
title('Cross Correlation Rxh Sequence')
xlabel('Samples')
ylabel('Amplitude')
grid on

subplot 426
stem(t2,rhx,'filled','m')
title('Cross Correlation Rhx Sequence')
xlabel('Samples')
ylabel('Amplitude')
grid on

subplot 414
stem(t3,rxx,'filled','y')
title('Auto Correlation Rxx Sequence')
xlabel('Samples')
ylabel('Amplitude')
grid on