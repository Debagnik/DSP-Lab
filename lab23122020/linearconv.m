function[y] = linearconv(x,h)
    m = length(x)
    n = length(h)
    N = m+n-1
    y = zeros(1,N)
    h = [h,zeros(1,N)]
    x = [x,zeros(1,N)]
    y = cconv(x,h,N)
end