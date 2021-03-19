clear all
close all
clc

N = 50
fs = 1000
N1 = 300
n = 0:N1-1
%signal generation and adding noise
xn = sin(2*10*pi*n/fs)
rn = xn+rand(size(n))
v = input('Enter filter type [1]Lowpass, [2]Highpass, [3]Bandpass, [4]Bandstop:    ')
cut = input('Enter cutoff frequency:    ')
switch v
    case 1
        fil = 'low'
    case 2
        fil = 'high'
    case 3
        fil = 'bpf'
    case 4
        fil = 'stop'
end
figure(1)
subplot 211
plot(n,xn)
title("original sine")

subplot 212
plot(n,rn)
title('Noisy sine')
figure
for prompt = 1:15
    %Filtering
    [win, winname] = windowPrompt(prompt,N)
    fxn = fir1(N,cut,fil,win)
    [f{prompt},w{prompt}]=freqz(fxn)
    subplot 211
    plot(w{prompt},20*log10(abs(f{prompt})),'markeredgecolor',[rand() rand() rand()])
    title('frequency response')
    xlabel('Normalized Frequency (x ? rad/sample)','fontweight','bold')
    ylabel('Magnitude (dB)','fontweight','bold')
    legend(["barthannwin", "bartlett", "blackmanharris" "blackman" "bohmanwin" "chebwin" "flattopwin" "gausswin" "hamming" "hann" "kaiser" "nuttallwin" "parzenwin" "rectwin" "tukeywin" "triang"])
    hold on
    grid on
    subplot 212
    plot(w{prompt},unwrap(angle(f{prompt})),'markeredgecolor',[rand() rand() rand()])
    hold on
    xlabel('Normalized Frequency (x ? rad/sample)','fontweight','bold')
    ylabel('phase (degrees)','fontweight','bold')
    grid on
    legend(["barthannwin", "bartlett", "blackmanharris" "blackman" "bohmanwin" "chebwin" "flattopwin" "gausswin" "hamming" "hann" "kaiser" "nuttallwin" "parzenwin" "rectwin" "tukeywin" "triang"])
end
hold off

%plotting results
figure(3)
for prompt = 1:16
    [win, WinName] = windowPrompt(prompt,N)
    fxn = fir1(N,cut,fil,win)
    yn = filter(win,1,rn)
    plot(n,yn,'markeredgecolor',[rand() rand() rand()])
    hold on
    title("Filtered Output")
    xlabel('Time--->','fontweight','bold')
    ylabel('Magnitude (dB)','fontweight','bold')
    grid on
    legend(["barthannwin", "bartlett", "blackmanharris" "blackman" "bohmanwin" "chebwin" "flattopwin" "gausswin" "hamming" "hann" "kaiser" "nuttallwin" "parzenwin" "rectwin" "tukeywin" "triang"])
end