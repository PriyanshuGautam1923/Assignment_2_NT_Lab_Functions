function [n,e] = ne_for_chebyshef(p_ripple,loss,pass_freq,Transit_band)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
syms n;
wn=1 + Transit_band/pass_freq;
p=p_ripple;
e=(10^(p/10)-1)^0.5;
f = cosh(n*acosh(wn*cosh(asinh(1/e)/n)));
vpa(subs(f,n,8),4);
l=loss;
c_value=((10^(l/10)-1)^0.5)/e;
for o=1:10
    if(vpa(subs(f,n,o),4)>c_value)
        break;
    end
end
n=o;
end

