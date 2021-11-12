function [H] = Butterworth_Transfer(n)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
i=1;
j=1;
p=zeros(1,2*n+1);
p(1,end)=1;
if(mod(n,2)==1)
    p(1,1)=-1;
else
    p(1,1)=1;
end
r=roots(p);
rreal=real(r);
for c=1:height(r)
    if(rreal(c,1)<0)
       r1(i,1)=r(c,1);
       i=i+1;
    end
    if(rreal(c,1)>0)
        r2(j,1)=r(c,1);
        j=j+1;
    end
end
H=vpa(poly(r1),5);
%H1=vpa(poly(r2),5);
%H=r1;
%H1=r2;
end

