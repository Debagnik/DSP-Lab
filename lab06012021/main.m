% main.c for expt 2,
% Coded and written by Debagnik Kar 1804373
clc
clear all
close all

b = [1 1]
a = [1 -1 0.5]
n = 0:50

% Impulse response
h = impz(b,a,length(n))
subplot 311
stem(n,h,'g')
title('Impulse Response')

% step sequence
x = stepseq(0,0,50)
s = filter(b,a,x)
subplot 312
stem(n,s,'k')
title('Step Response')

% Plotting in z-plane
subplot 338
zplane(a,b)
xlabel('Real')
ylabel('Imaginary')


% Stability
p = roots(a)
m = abs(p)
if m<1
    legend('Stable Function')
else
    legend('Unstable Function')
end