%driver file for circular and linear convolution using DFT and IDFT
%Written by Debagnik Kar 1804373
clc
close all
clear all

x = input('Enter the 1st sequence: ')
h = input('Enter the 2nd sequence: ')
n0 = 0:(length(x)+length(h)-2)
n1 = 0:max(length(x),length(h))-1
lc = lenearconv0(x,h)
cc = circonv0(x,h)
subplot 411
stem(x,'c')
title('Input Sequence 1')
subplot 412
stem(h,'r')
title('Input Sequence 2')
subplot 413
stem(n0,abs(lc),'k')
title('Linear Convolution')
subplot 414
stem(n1,abs(cc),'g')
title('Circular Convolution')
