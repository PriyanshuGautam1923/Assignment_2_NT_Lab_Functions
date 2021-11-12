function H = Chebyshef(n,e)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
b=asinh(1/e)/n;
c=tanh(b);
for k=1:n
    real=c*sin(((2*k-1)/n)*pi/2);
    imag=cos(((2*k-1)/n)*pi/2);
    root(k,1)=complex(real,imag);
end
root=root.*cosh(b);
H=poly(root);
end
