function [y,n]=sigold(x,n)

% y(n) = x(-n) Đảo trục

y = fliplr(x);
n = -fliplr(n);