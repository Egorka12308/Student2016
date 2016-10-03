function [s]=V4_Osintseva_filtrB(y,l,k,M)%������� �������
L=length(y);%����� ������� L ����� ����� y
for i=1:L;%i �������� �� 1 �� L
    d(i)=y(i);
     if i>k %������, ����� i ������ k
       d(i)=y(i)-y(i-k);%�������� d, ����� i ������ k
         if i>l %������, ����� i ������ l
         d(i)=y(i)-y(i-k)-y(i-l);%�������� d, ����� i ������ l
          if i>k+l %������, ����� i ������ k+l
           d(i)=y(i)-y(i-k)-y(i-l)+y(i-k-l);%�������� d, ����� i ������ k+l
          end 
       end
     end
end
p(1)=d(1);%�������� p �� 1
r(1)=p(1)+M*d(1);%�������� r �� 1
s(1)=r(1);%�������� s �� 1
for i=2:L;%i �������� �� 2 �� L
   p(i)=p(i-1)+d(i);%�������� p 
   r(i)=p(i)+M*d(i);%�������� r
   s(i)=s(i-1)+r(i);%�������� s
end

end

