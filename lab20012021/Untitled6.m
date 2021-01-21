L = 4
N = 4; 
x = [1 ,2 ,3 ,4];
X = dft0(x , length(x));
x = abs(dft0(X ,length(X)))
subplot (2 ,1 ,1)
plot(0: length (x) -1,x)
plot(0: length (X) -1,abs(X))