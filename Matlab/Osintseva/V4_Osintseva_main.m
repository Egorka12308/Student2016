clear%������� ������
t=0:1:100 %������ t � ����� 1
%�������1:
if t<0
    y=0;
end
%�������2:
if t>=0
%������:
    A=1;
    tau1=16;
    tau2=5;
   
  [y]=V4_Osintseva_exp( A, tau1, tau2,t); % �������� �������
  
end
plot(t,y,'g','LineWidth',3)%���������� �������
title('����������� y(t)')%���������
grid %�����
xlabel('t','Color','b'); %������� ��� x
ylabel('y','Color','b') %������� ��� y
%saveas( gcf,['������'], 'jpg' );  % ���������� ������� � ������� jpg 
  