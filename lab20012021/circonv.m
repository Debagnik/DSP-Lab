function [yn] = circonv(x,h)
    N = max(length(x),length(h))
    n = 0:N-1
    Xk = (fft(x,N))
    Hk = (fft(h,N))
    Yk = Xk.*Hk
    yn = ifft(Yk,length(Yk))
end