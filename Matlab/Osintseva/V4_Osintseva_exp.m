function [y] = V4_Osintseva_exp( A,tau1,tau2,t )%
%UNTITLED2 Summary of this function goes here
 y=A*(exp(-t/tau1)-exp(-t/tau2));%функция экспонента
end

