function [ y ] = exponenta( A,t,tau1,tau2 )%������� ����������
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
y=A*(exp(-t/tau1)-exp(-t/tau2)); %�������� �������

end

