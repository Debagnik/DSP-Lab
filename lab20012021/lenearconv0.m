% Fuctional dependency for performing circular convolution using DFT & IDFT
% Written by Debagnik Kar 1804373
function [yn] = lenearconv(x,h)
    N = length(x)+length(h)-1
    Xk = dft0(x,N)
    Hk = dft0(h,N)
    Yk = Xk.*Hk
    yn = idft0(Yk,length(Yk))
end