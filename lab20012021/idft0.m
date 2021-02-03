% IDFT function dependency
% Written by Debagnik Kar 1804373
function Xk = idft0(xn,N)
    for k = 0:N-1
        for n = 0:N-1
            Wn(k+1,n+1) = exp(1j*2*pi*k'*n/N)
            
        end
    end
     Xk = (Wn'*xn)/N
           
end