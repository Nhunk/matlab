clf;
n = -2:10
x = [1:7,6:-1:1] % tạo chuỗi từ 1 đến 7 rồi từ 6 đến 1

% Chương trình câu a
[x11,n11] = sigshift (x,n,5)
[x12,n12] = sigshift(x,n,-4)
[x1,n1] = sigadd(2*x11,n11,-3*x12,n12)
subplot(2,2,1)
stem(n1,x1)
grid;
title('a. x_{1}(n) = 2x(n-5)+(-3)x(n+4)')
xlabel('n'); ylabel('x1(n)')

% Chương trình câu b
[x211,n211] = sigold(x,n)          % Đảo trục x(-n)
[x21,n21] = sigshift(x211,n211,3)  % Do đảo trục nên n0 ngược lại
[x22,n22] = sigshift(x,n,2)        % x(n-2)
[x2,n2] = sigadd(x21,n21,x22,n22)  % x(3-n)+x(n-2)
subplot(2,2,2)
stem(n2,x2)
grid;
title('b. x2(n) = x(3-n)+x(n-2)')
xlabel('n'); ylabel('x2(n)')

% Chương trình câu c
[x31,n31]=sigshift(x211,n211,2)    % x(2-n)
[x321,n321]=sigshift(x,n,2)        % x(n-2)
[x32,n32] = conv_m(x,n,x321,n321)  % Tổng chập: x(n)*x(n-2)
[x3,n3]=sigadd(x31,n31,-x32,n32)   % x(2-n)-x(n)*x(n-2)
subplot(2,2,3)
stem(n3,x3)
grid;
title('c. x3(n) = x(2-n)-x(n)*x(n-2)')
xlabel('n'); ylabel('x3(n)')

% Chương trình câu d
[x41,n41] =sigshift(x211,n211,4)   % x(4-n)
[x421,n421] =sigshift(x,n,1)       % x(n-1)
[x42,n42] = conv_m(x,n,x421,n421)  % Tổng chập: x(n)*x(n-1)
[x43,n43] = sigshift(x,n,3)        % x(n-3)
[x44,n44] = sigadd(x41,n41,-x42,n42) % x(4-n)-x(n)*x(n-1)
[x4,n4 ] = sigadd(x43,n43,x44,n44) % x(4-n)-x(n)*x(n-1)+x(n-3)
subplot(2,2,4)
stem(n4 ,x4 )
grid;
title('d. x4(n) = x(4-n)-x(n)*x(n-1)+x(n-3)')
xlabel('n'); ylabel('x4(n)')