function [ V ] = Gmyrya_4var_filtr( y,k,l,M );% ������� �������
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
R=length(y);% ����� �������
for i=1:R;% ���������� ���� ��� ��� �������� i �� 1 �� R
    d(i)=y(i);% ���������� �������� d
 if i>l %���� ��� �������� ������ k
  d(i)=y(i)-y(i-l);% ���������� �������� d
 if i>k %���� ��� �������� ������ l
  d(i)=y(i)-y(i-k)-y(i-l);% ���������� �������� d
 if i>k+l %���� ��� �������� ������ k+l
  d(i)=y(i)-y(i-k)-y(i-l)+y(i-k-l);% ���������� �������� d
   end 
   end
 end
end
%������� ��� ������ ��������� 
p(1)=d(1);
  r(1)=p(1)+M*d(1);
   V(1)=r(1);
for i=2:R;% ���������� ���� ��� ��� �������� i �� 2 �� R
    %������� ��� i ���������
    p(i)=p(i-1)+d(i);
     r(i)=p(i)+M*d(i);
      V(i)=V(i-1)+r(i);
end

end



