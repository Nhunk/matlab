clf;
x = 0:0.1:2*pi;
n=0:10;
y1 = sin(x);
y2 = cos(x);
y = 2*n.^2 + 4*n + 1;

subplot(2, 1, 1);
grid on;hold on;
plot(x,y1,'r-',x,y2,'b-')
title('Do thi y = sin(x)')
xlabel('\bfTruc x')
ylabel('\bfTruc y') 


subplot(2, 1, 2);
grid on;hold on;
stem(n,y,'b')
title('Do thi y = 2*n^2 + 4*n + 1')
xlabel('\bfTruc x')
ylabel('\bfTruc y') 
