%% функция 
function [x1, x2] = solve_quadro (a, b, c)
if a == 0
    if b == 0
        error('уравнение не имеет корней');
    else 
        x1 = -c/b;
        x2 = x1;
        return
    end
end 
% дискриминант
D = b^2 -4*a*c;

% корни
x1 = (-b+sqrt(D))/(2*a);
x2 = (-b-sqrt(D))/(2*a);
end
