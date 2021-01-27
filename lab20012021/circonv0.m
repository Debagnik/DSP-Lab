% Fuctional dependency for performing circular convolution using DFT & IDFT
% Written by Debagnik Kar 1804373
function [yn] = circonv(x,h)
    N = max(length(x),length(h))
    n = 0:N-1
    Xk = dft0(x,N)
    Hk = dft0(h,N)
    Yk = Xk.*Hk
    yn = idft0(Yk,length(Yk))
end