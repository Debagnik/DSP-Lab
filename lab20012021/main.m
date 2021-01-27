% main driver file
% written by Debagnik Kar 1804373
% given sequence [1 8 0 4 3 7 3]
clear all
close all
clc

xn = input('Enter sequence:')
N = length(xn)
subplot 321
stem(xn)
title('Input Sequence')
dtft = dft0(xn,N)
magX = abs(dtft)
phaseX = angle(dtft)
subplot 322
stem(1:N,xn)
xlabel('Index k')
ylabel('X(k)')
title('DFT')
subplot 323
stem(1:N,magX)
xlabel('Index k')
ylabel('| X(k) |')
title('Magnitude Graph')
subplot 324
stem(1:N,phaseX)
xlabel('Index k')
ylabel('Phase X(k)')
title('Phase Graph')

idtft = idft0(xn,N)
subplot(3,2,5)
stem(1:N,abs(idtft))
xlabel('Index n')
ylabel('x(n)')
title('IDFT')