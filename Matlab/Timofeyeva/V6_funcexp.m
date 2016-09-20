function [y]=V6_funcexp(A,t,tau1,tau2) % A, t, tau1, tau2 - входные параметры

y=A*(exp(-t/tau1)-exp(-t/tau2)); %задание функции

end

