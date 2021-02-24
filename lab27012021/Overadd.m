%Overlapadd.m
%Written by Debagnik Kar 1804373

clc
clear all
close all
x=input('enter The sequence x:  ')
h=input('enter the sequence h:  ')
lx=length(x)
M=length(h)
N=2*M-1
L=N-M+1
x=[x,zeros(1,N-1)]
h=[h,zeros(1,N-M)]
k=floor(lx/M)+1
p=zeros(k,N)
for i=1:k
    p(i,1:L)=x((i-1)*L+1:(i-1)*L+L)
end
y=zeros(k,N)
for i=1:k
    y(i,:)=cconv(p(i,:),h,N)
end
for i=2:k
    y(i,1:M-1)= y(i,1:M-1)+y(i-1,L+1:N)
end
z=y(:,1:L)
a=z'
subplot(311)
stem(x)
title('x')
subplot(312)
stem(h)
title('h')
subplot(313)
stem(a(:))
title('overlap add')