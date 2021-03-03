%main.m generates a IIR filter to filter a noisy signal
%Written y Debagnik Kar 1804373

clc
clear all
close all

N = 50
fs = 800
N1 = 500
n = 0:N1-1
prompt0 = input('Select filter (1) Butter (2) chebishev:  ')
prompt1 = input('Select filer type (1) LP (2) HP (3) BP:  ')

xn = sin(20*pi*n/fs)

figure(1)
subplot 211
plot(n,xn)
title('original signal')

rn = rand(size(n)) + xn
subplot 212
plot(n,rn)
title('Noisy signal')

switch prompt1
    case 1
        fil = 'low'
        Wc = 0.4
        str0 = 'low-pass'
    case 2
        fil = 'high'
        Wc = 0.6
        str0 = 'high-pass'
    case 3
        fil = 'bandpass'
        Wc = [0.3 0.5]
        str0 = 'band-pass'
    otherwise
        exit()
end

switch prompt0
    case 1
        [b a] = butter(10,Wc,fil)
        str2 = 'butterworth filter Frequency Response'
    case 2
        [b a] = cheby2(N,80,Wc,fil)
        str2 = 'chebyshev filter Frequency Response'
end

f = filter(b,a,rn)

% figure(2)
% plot(n,f)
str1 = strcat(str0,{' '},str2)
% title(strcat('signal passing through a',{' '},str0,{' '},str2))
figure(3)
freqz(f)
title(str1)