%CREATION OF FUNCTION%
function [y] = V2_functionexp(A,t,tau1,tau2)
%FUNCTION SETTINGS%
if t<0
y=0;
else
y=A*(exp(-t/tau1)-exp(-t/tau2));
end