%CONSTANTS%
A=1;
t=0:1:100;
tau1=16;
tau2=5;

%FUNCTION FROM FILE V2_functionexp.m%
[y]=V2_functionexp(A,t,tau1,tau2);

%FUNCTION GRAPH%
hold on
grid on
plot (t,y)
xlabel('t')
ylabel('y')