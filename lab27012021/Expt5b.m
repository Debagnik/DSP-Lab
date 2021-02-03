clc
clear all
close all

x = input('enter a sequence:')
h = input('enter a sequence:')
l = length(x)
M = length(h)
N = 2*M-1
L = N-M+1
x = [x,zeros(1,N)]
h = [h,zeros(1,N-M)]
k = floor(l/M)+1
p = zeros(k,N)
for i = 1:k
    p(i,L:N) = x((i-1)*L+1:(i-1)*L+L)
end

for i = 2:k
    p(i,1:M-1) = p(i-1,L+1:N)
end

y = zeros(k,N)
for i = 1:k
    y(i,:) = cconv(p(i,:),h,N)
end

z = y(:,L:N)
u =z'
u(:)