function [y]=V6_funcexp(A,t,tau1,tau2)

y=A*(exp(-t/tau1)-exp(-t/tau2)); 

end

