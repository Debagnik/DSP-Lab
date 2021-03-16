clc
close all
clear all

t = 0:1e-3:1
x = sin(2*pi*30*t) +sin(2*pi*60*t)
y = interp(x,4)
figure(1)
subplot 411
stem(0:30,x(1:31),'filled','MarkerSize',2)
grid on
ylabel('x(t)')
xlabel('t--->')
title('sine wave')
subplot 412
stem(0:120,y(1:121),'filled','MarkerSize',2)
grid on
ylabel('x(t)')
xlabel('t--->')
title('Up Sampling')
y1 = decimate(x,4)
subplot 413
stem(0:120,y1(1:121),'filled','MarkerSize',2)
grid on
ylabel('x(t)')
xlabel('t--->')
title('Down sampling')
subplot 414
stem(0:30,y1(1:31),'filled','MarkerSize',2)
grid on
ylabel('x(t)')
xlabel('t--->')
title('down sampling but small time frame')
figure(2)
freqz(x)
title('Frequency response of original Signal')
figure(3)
freqz(y)
title('Frequency response of interpolated Signal')
figure(4)
freqz(y1)
title('Frequency response of decimated Signal')