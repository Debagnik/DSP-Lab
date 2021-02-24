%FIR.m: Main code for dedigning FIR Filter
%Written by Debagnik Kar 1804373
clear all
close all
clc

prompt0 = input('Select window [Rect(1)/tri(2)]:  ')
prompt1 = input('select filter type [LP(1)/HP(2)/BP(3):  ')

N = 50

switch prompt0
    case 1
        win = rectwin(N+1)
    case 2
        win = triang(N+1)
    otherwise
        win = []
        disp('error')
end

switch prompt1
    case 1
        fil = "low"
        cut = 0.3
    case 2
        fil = 'high'
        cut = 0.6
    case 3
        fil = "bpf"
        cut = [0.2 0.5]
    otherwise
        disp('error 2')
end

fs = 1000
N1 = 300
n = 0:N1-1
%signal generation and adding noise

xn = sin(20*pi*n/fs)
%figure(1)
%subplot 211
%plot(n,xn)
%title("original sine")
rn = xn+rand(size(xn))
%subplot 212
%plot(n,rn)
%title('Noisy sine')

%Filtering
fxn = fir1(N,cut,fil,win)
yn = filter(fxn,1,rn)

%plotting results
figure(2)
subplot 313
freqz(fxn)
figure(3)
plot(n,yn)
title('Filtered Output')