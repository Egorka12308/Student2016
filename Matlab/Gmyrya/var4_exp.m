t=0:1:100;% ���
if t<0 % ������ �������
    y=0;
end
if t>=0% ������ �������
   tau1=16;
   tau2=5;
   A=1;
  [ y ] = exponenta( A,t,tau1,tau2 );% ���� �������
end
plot(t,y,'b-.','LineWidth',4)% ���������� �������
xlabel('t')% ����������� ��� �
ylabel('�������')% ����������� ��� �