%CREATION OF FILTER FUNCTION%
function [s] = V2_trianglefilter(y,k,l,M)

L=length(y); %returns the length of the largest array dimension in y, the length is the number of elements
%STATEMENTS FOR FILTER%
for n=1:L %cycle for 1 to L
    dkl(n)=y(n);
    if (n-k>=1) 
        dkl(n)=dkl(n)-y(n-k);    
    end 
    if (n-l>=1)
        dkl(n)=dkl(n)-y(n-l);
    end
    if (n-k-l>=1)
    dkl(n)=dkl(n)+y(n-k-l);  
    end
end 
%STATEMENTS FOR n=1%
p(1)=dkl(1);
r(1)=p(1)+M*dkl(1);
s(1)=r(1);
%STATEMENTS FOR n FROM 2 TO L%
for n=2:L
    p(n)=p(n-1)+dkl(n);
    r(n)=p(n)+M*dkl(n);
    s(n)=s(n-1)+r(n);
end