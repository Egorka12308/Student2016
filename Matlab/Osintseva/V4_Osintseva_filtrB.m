function [s]=V4_Osintseva_filtrB(y,l,k,M)%функция фильтра
L=length(y);%длина вектора L равна длине y
for i=1:L;%i меняется от 1 до L
    d(i)=y(i);
     if i>k %случай, когда i больше k
       d(i)=y(i)-y(i-k);%значение d, когда i больше k
         if i>l %случай, когда i больше l
         d(i)=y(i)-y(i-k)-y(i-l);%значение d, когда i больше l
          if i>k+l %случай, когда i больше k+l
           d(i)=y(i)-y(i-k)-y(i-l)+y(i-k-l);%значение d, когда i больше k+l
          end 
       end
     end
end
p(1)=d(1);%значение p от 1
r(1)=p(1)+M*d(1);%значение r от 1
s(1)=r(1);%значение s от 1
for i=2:L;%i меняется от 2 до L
   p(i)=p(i-1)+d(i);%значение p 
   r(i)=p(i)+M*d(i);%значение r
   s(i)=s(i-1)+r(i);%значение s
end

end

