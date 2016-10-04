function [ V ] = Gmyrya_4var_filtr( y,k,l,M );% функция фильтра
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
R=length(y);% длина вектора
for i=1:R;% записываем цикл фор для значений i от 1 до R
    d(i)=y(i);% записываем значение d
 if i>l %цикл для значений больше k
  d(i)=y(i)-y(i-l);% записываем значение d
 if i>k %цикл для значений больше l
  d(i)=y(i)-y(i-k)-y(i-l);% записываем значение d
 if i>k+l %цикл для значений больше k+l
  d(i)=y(i)-y(i-k)-y(i-l)+y(i-k-l);% записываем значение d
   end 
   end
 end
end
%условия для первых элементов 
p(1)=d(1);
  r(1)=p(1)+M*d(1);
   V(1)=r(1);
for i=2:R;% записываем цикл фор для значений i от 2 до R
    %условия для i элементов
    p(i)=p(i-1)+d(i);
     r(i)=p(i)+M*d(i);
      V(i)=V(i-1)+r(i);
end

end



