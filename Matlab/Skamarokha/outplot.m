clear all
%%
A=1;
t=0:1:100;
tau1=16;
tau2=15;
%%
[y]=V2(A,t,tau1,tau2);
%%
hold on
grid on
plot(t,y);
xlabel('t');
ylabel('y');
