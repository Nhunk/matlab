clf;
n=0:200;
x = cos(2*pi*0.05*n);
x1 = [x 0 0];       %x(n+1)
x2 = [0 x 0];       %x(n)
x3 = [0 0 x];       %x(n-1)
y = x2.*x2 - x1.*x3;%y(n) = x(n)^2 -x(n-1)*x(n+1)
y = y(2:202);       % Dịch sang để lấy đúng trung tâm đoạn tín hiệu

subplot(2,1,1)
stem(n,x)
xlabel("Time index n");ylabel("Amplitude");
title("Input signal");

subplot(2,1,2)
stem(n,y)
xlabel("Time index n");ylabel("Amplitude");
title("Output signal");
