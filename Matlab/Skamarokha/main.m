clear all
%%Константы и переменные
A=1;
t=0:1:100;
tau1=16;
tau2=5;
%%вызов функции из m-файла
[y]=V2_funcexp(A,t,tau1,tau2);
%%построение графика
hold on
grid on
plot(t,y);
xlabel('t');
ylabel('y');
