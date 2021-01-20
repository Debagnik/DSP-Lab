% Function for performing DTFT
% Writtin by Debagnik Kar 1804373

function [X] = dtft(x,n,w)
   
    temp = n'*w;
    temp = -1i*temp;
    e = exp(temp);
    X = x*e;
end