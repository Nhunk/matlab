%Caau1: 3x(n+3)-2x(-n-5)+x(n-1)x(n)
clf;
n=-1:10;
x = [2:2:16,15:-1:12];

[x111,n111]=sigold(x,n)             %dao truc x(-n)
[x11,n11 ]=sigshift(x111,n111,-5)   %x(-n-5)
[x12,n12] = sigshift(x,n,-3)        %x(n+3) 
[x131,n131]=sigshift(x,n,1)         %x(n-1)
[x13,n13 ]=conv_m(x131,n131,x,n)    %x(n-1)x(n)
[x1,n1]=sigadd(3*x12,n12,-2*x11,n11)%3x(n+3)-2x(-n-5)
[x2,n2]=sigadd(x1,n1,x13,n13)       %3x(n+3)-2x(-n-5)+x(n-1)x(n)

stem(n2,x2)
grid;
title('x_{1}(n) = 3x(n+3)-2x(-n-5)+x(n-1)x(n)')
xlabel('n'); ylabel('x1(n)')



