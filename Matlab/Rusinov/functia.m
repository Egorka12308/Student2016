funcion [y]=functia(A,t,tau1,tau2)
if t<0
  y=0;
else
  y=A*(exp(-t/tau1)-exp(-t/tau2));
end
end
