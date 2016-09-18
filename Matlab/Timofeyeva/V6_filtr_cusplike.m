function [s] = V6_filtr_cusplike(y, l, k, m1, m2)
S=length(y); %размер вектора
for n=1:S; 
    dk(n)=y(n);
 if n>k %условие для y(n-k)>0
     dk(n)=y(n)-y(n-k); 
 end
 d1(n)=y(n);
 if n>1 %условие для y(n-l)>0
     d1(n)=y(n)-y(n-1);
 end
end
%элементы с n=1:
p(1)=dk(1); 
q(1)=m2*p(1); 
s(1)=q(1)+m1*p(1);
for n=2:S;
    p(n)=p(n-1)+dk(n);
 if n>l %условие для dl(n-l)>0
     p(n)=p(n-1)+dk(n)-k*d1(n-l); 
 end
q(n)=q(n-1)+m2*p(n);
s(n)=s(n-1)+q(n)+m1*p(n);
end
end

