hold on
grid on
%%
t=0:1:100; %������ �������� �� ������� �� 0 �� 100 � ����� 1
%% ��������� �������
A=1;
tau1=16;
tau2=5;
%% ����� �������
[y] = V6_funcexp( A, t, tau1, tau2 );
%% ���������� �������
plot(t,y,'m') 
%% ��������� �������
l=6;
k=13;
m1=16;
m2=1;
%% ����� ������� �������
[s] = V6_filtr_cusplike(y, l, k, m1, m2);
%% ���������� �������
plot(t,s/275,'k')
