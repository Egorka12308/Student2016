clearvars 
t = 0:1:100 %������ ������ ������, ��� � ������� ������ - ���������� ������ 
y1 = func_exp(16, 5, t)  % �������� ������� � ��������� ����������
plot(t,y1) %������ ������

y2 = [];
for i=0:100
    y2 = [y2 trap_filter(8, 5, 16, 16, 5, i)]; % �� ��� �������
end
figure
plot(t,y2)