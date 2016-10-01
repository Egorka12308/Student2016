function [s]=filt(y,l,k,m1,m2)
N=length(y);
for n=1:N;
    dk(n)=y(n);
    d1(n)=y(n);
 if n>k 
     dk(n)=y(n)-y(n-k); 
 end
 if n>1 
     d1(n)=y(n)-y(n-1);
 end
end
p(1)=dk(1); 
q(1)=m2*p(1); 
s(1)=q(1)+m1*p(1);
for n=2:N;
      p(n)=p(n-1)+dk(n);
 if n>l
     p(n)=p(n-1)+dk(n)-k*d1(n-l); 
 end 
    q(n)=q(n-1)+m2*p(n);
    s(n)=s(n-1)+q(n)+m1*p(n);
end
end