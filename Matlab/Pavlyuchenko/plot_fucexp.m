clear;
hold on
grid on
t=0:1:100;
A=1;
t1=16;
t2=5;
[y]=funcexp(A,t,t1,t2);
plot(t,y)
l=5;
k=11;
m1=16;
m2=1;
[s]=filt(y,l,k,m1,m2);
plot(t,s)