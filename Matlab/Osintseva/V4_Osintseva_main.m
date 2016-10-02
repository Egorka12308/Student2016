clear%очистка экрана
t=0:1:100 %предел t с шагом 1
%Условие1:
if t<0
    y=0;
end
%Условие2:
if t>=0
%Данные:
    A=1;
    tau1=16;
    tau2=5;
   
  [y]=V4_Osintseva_exp( A, tau1, tau2,t); % Исходная функция
  
end
plot(t,y,'g','LineWidth',3)%построение графика
title('Зависимость y(t)')%Заголовок
grid %сетка
xlabel('t','Color','b'); %подпись оси x
ylabel('y','Color','b') %подпись оси y
%saveas( gcf,['График'], 'jpg' );  % сохранение графика в формате jpg 
  