% main driver file

clear all
close all
clc

xn=input('Enter the sequence in [] :');

N=length(xn);
subplot(3,2,1)
stem(xn);
dtft=dft0(xn,N)
magX=abs(dtft);
phaseX=angle(dtft);
subplot(3,2,2)
stem(1:N,xn)
xlabel('index k'),ylabel('X(k)'),title('DFT')
subplot(3,2,3)
stem(1:N,magX)
xlabel('index k'),ylabel('| X(k) |'),title('| DFT |')
subplot(3,2,4)
stem(1:N,phaseX)
xlabel('index k'),ylabel('phase X(k)'),title('phase DFT')

idtft=idft0(xn,N)
subplot(3,2,5)
stem(1:N,abs(idtft))
xlabel('index n'),ylabel(' x(n)'),title('IDFT')