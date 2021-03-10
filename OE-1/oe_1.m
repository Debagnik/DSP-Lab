clear all
close all
clc


[y, Fs]= audioread('1.m4a') % time signal
y = y(:,1)
N=length(y)
t=0:1/Fs:N/Fs-1/Fs
t=t'
Fs=1/(t(2)-t(1))
Fn=Fs/2
yf=fft(y,N)
df = Fs/N % Frequency Resolution


plot(t,y)
grid on
title('Time Signal')
ylabel('Amplitude')
xlabel(['Time Resolution: ',num2str(1/Fs),' s'])

amplH = abs(yf)
amplitudengang = fftshift(amplH/N)

x_fn = 0 : df : Fn-df
x_fa = 0 : df : Fs-df

figure
stem(x_fa-Fn, amplitudengang, 'b.-')
axis([-Fn Fn 0 max(amplitudengang)])
title('Two sided Spectra')
ylabel('Amplitude')
xlabel(['Frequency Resolution: ',num2str(df),' Hz'])
grid

amplitudengang=[amplitudengang(513) amplitudengang(514:end).*2]

figure
stem([0:df:(Fn-df)], amplitudengang, 'b.-')
axis([0 Fn 0 max(amplitudengang)])
title('Single Sided Spectra')
ylabel('Amplitude')
xlabel(['Frequency Resolution: ',num2str(df),'Hz'])
grid

amp10=amplitudengang(1:round((10-df)/df))
amp20=amplitudengang(round((10-df)/df):round((20-df)/df))
amp30=amplitudengang(round((20-df)/df):round((30-df)/df))
amp40=amplitudengang(round((30-df)/df):round((40-df)/df))
amp50=amplitudengang(round((40-df)/df):round((50-df)/df))

rms10=amp10./sqrt(2)
rms20=amp20./sqrt(2)
rms30=amp30./sqrt(2)
rms40=amp40./sqrt(2)
rms50=amp50./sqrt(2)

rms10=sqrt((rms10(1)/2)^2+sum(rms10(2:(end-1)).^2)+(rms10(end)/2)^2)
rms20=sqrt((rms20(1)/2)^2+sum(rms20(2:(end-1)).^2)+(rms20(end)/2)^2)
rms30=sqrt((rms30(1)/2)^2+sum(rms30(2:(end-1)).^2)+(rms30(end)/2)^2)
rms40=sqrt((rms40(1)/2)^2+sum(rms40(2:(end-1)).^2)+(rms40(end)/2)^2)
rms50=sqrt((rms50(1)/2)^2+sum(rms50(2:(end-1)).^2)+(rms50(end)/2)^2)

figure
stem([5 15 25 35 45],[rms10,rms20,rms30,rms40,rms50])
axis([0 Fn 0 max([rms10,rms20,rms30,rms40,rms50])])
title('RMS values per 10Hz')
ylabel('Amplitude')
xlabel(['Frequency in Hz'])
grid on
