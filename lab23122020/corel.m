% Expt1 function dependency
% Correleation fuction coded by Debagnik Kar 1804373
function[t,y] = corel(x,h)
    n = length(x)
    m = length(h)
    N = n+m-1
    h = fliplr(h)
    x = [x, zeros(1, n)]
    h = [h, zeros(1, m)]
    y = circonv(x,h,N)
    t = -(N-1)/2:(N-1)/2
end