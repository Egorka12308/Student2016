T1 = 16;  T2 = 5; 
A = 1;              %����� �������� ���������

k = 10; l = 5; M=16;

[t] = 0.0 : 1.0 : 100.0; %��� �


[f]=func11(A,T1,T2,t);%���������� � ������� ����.
[s]=Filter(f,k,l,M); %�������� ������


subplot(2,1,1);% ���� �� 2 �����/1
plot(t,f);%����� �������
subplot(2,1,2);%/2
plot(t,s);%������