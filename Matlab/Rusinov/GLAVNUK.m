
clear;%������� ����������, ������� �������������� �� ����� �������
hold on%�������� ����� � ������� � ����� ����
grid on
t=0:1:100;%��������� ���������� � ������� ���������� ��������� t  �� ���
A=1;
t1=16;%������ ������������ ���� �������� y
t2=5;
[y]=functia(A,t,t1,t2);%����� ������� "functia" �� ����� "functia.m"
plot(t,y)%���������� ������� �������
l=5;
k=11;%�������� ������ ��� �������
m1=16;
m2=1;
[s]=filtor(y,l,k,m1,m2);%����� ������� "filtor" �� ����� "filtor.m"
plot(t,s/180)%��������� ������� �������, ����� ����������� ����� ������