function[y]= circonv(x,h,N)
    N1=length(x)
    N2=length(h)
    if(N2>N1)
        x4=[x,zeros(1,N-N1)]
        x5=h
    elseif(N2==N1)
        x4=x
        x5=h
    else
        x4=x
        x5=[h,zeros(1,N-N2)]
    end
    y=zeros(1,N);
    for m=0:N-1
        y(m+1)=0;
        for n=0:N-1
            j=mod(m-n,N);
            y(m+1)=y(m+1)+x4(n+1).*x5(j+1);
        end
    end
end