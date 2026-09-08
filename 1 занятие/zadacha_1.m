clear
close all
clc

%коэффициенты
a = 3;
b = -10;
c = 1;

[x1, x2] = solve_quadro (a, b, c)

%графики
x_min = min([x1, x2])-10;
x_max = max([x1, x2])+10;
x_vals = linspace(x_min, x_max, 100);
y_vals = a*x_vals.^2 + b*x_vals + c;


figure;
plot(x_vals, y_vals, '-b', 'LineWidth', 2);

if isreal(x1) && isreal(x2) 
hold on;
plot(x1, 0, 'ro', 'MarkerSize', 5, 'MarkerFaceColor', 'r');
plot(x2, 0, 'ro', 'MarkerSize', 5, 'MarkerFaceColor', 'r');
grid on;
xlabel('x');
ylabel('y');
legend('график функции', 'корни уравнений');
else 
    fprintf('корни комплесные');
end
hold off;


