function Mass_y = func_y(A, tmin, dt, tmax, t1, t2)

    Mass_y=[]; % �������� ������� ������� 
    
for t=tmin:dt:tmax % ������� ������������, ������������� �������� ��������� t, �������� ���� ��� ����� 
    if t<0;
    Mass_y=[Mass_y 0]; % ���������� � ������ ���������������� �������, � ����������� �� ������� t
    else
    Mass_y=[Mass_y A*( exp(-t/t1)-exp(-t/t2) )];
    end 
end
%Mass_y
end


