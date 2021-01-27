% Fuctional dependency for performing circular convolution using DFT & IDFT
% Written by Debagnik Kar 1804373
function [yn] = lenearconv(x,h)
    N = length(x)+length(h)-1
    Xk = fft0(x,N)
    Hk = fft0(h,N)
    Yk = Xk.*Hk
    yn = ifft0(Yk,length(Yk))
end