function [X] = dtft(x,n,w)
   
    temp = n'*w;
    temp = -1i*temp;
    e = exp(temp);
    X = x*e;
end