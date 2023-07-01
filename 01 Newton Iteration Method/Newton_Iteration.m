%{
 *=======================================================================================
 *========================================【M FILE】=====================================
 * Copyright 流体力学与声学技术实验室
 * ALL right reserved.See COPYRIGHT for detailed Information.
 *
 * @File:       Newton_Iteration.m
 * @Brief:      1. 牛顿迭代法
 *              2. 以开方求解为例
 * @Author:     Haiger
 * @date:       2023.07.01
 *=======================================================================================
%}

% 对f(x) = x^2 - n = 0进行求解，例如想求取 n = 4 的开方
n = 625;
% 输入一个初始值 x = n，
x = n;                                              % 初始值
Error_Max = 1e-15;                                  % 最大误差
Iteration = 0;                                      % 迭代次数
y = (x + n / x) / 2;
while abs(x - y) > Error_Max
    Iteration = Iteration + 1;
    x = y;
    y = (x + n / x) / 2;
    fprintf("Iteration: %d\n", Iteration);
end
fprintf("x = %f\n", x);