function main = main
clear
Mass_y=[]; 
Mass_s=[];
tmin=0;    
dt=1;
tmax=100;
t=tmin:dt:tmax;
A=1;
t1=16;
t2=5;
k=6;
l=6;
M=16;
Mass_y=func_y(A,tmin,dt,tmax,t1,t2) 
Mass_s=filter1(A, tmin, dt, tmax, t1, t2, k, l, M) 
plot(t,Mass_y)      
figure;plot(t,Mass_s)   
end

function Mass_y = func_y(A, tmin, dt, tmax, t1, t2)

    Mass_y=[];
    Mass_t=[];
    
for t=tmin:dt:tmax
    if t<0;
    Mass_y=[Mass_y 0];
    else
    Mass_y=[Mass_y A*( exp(-t/t1)-exp(-t/t2) )];
    end 
    Mass_t=[Mass_t t];
end
%Mass_y
end

function s = filter1(A, tmin, dt, tmax, t1, t2, k, l, M)
v=[];
p=[];
r=[];
d=[];
s=[];
s(l+k)=0;
p(l+k)=0;
v=func_y (A,-l-k-1,dt,tmax,t1,t2);          
for n=1+l+k:dt:tmax+1+l+k                   
        d(n)=v(n)-v(n-l)-v(n-k)+v(n-l-k);
        p(n)=p(n-1)+d(n);
        r(n)=p(n)+M*d(n);
        s(n)=s(n-1)+r(n);
end
if tmin<0
     s(1:l+k+1)=[];
end
if tmin>=0
     s(tmin+1:tmin+l+k)=[];
end     
end

