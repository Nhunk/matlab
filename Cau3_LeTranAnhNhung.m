%Câu 3: Vẽ và xác định chu kì tuần hoàn: y(n)=3cos(5pi/6 * n + pi/3) + 2 sin(pi/4 * n + pi/5)
clf;
n = 0:50; 
y = 3*cos((5*pi/6)*n + pi/3) + 2*sin((pi/4)*n + pi/5);

figure;
stem(n, y, 'b');
grid on;
xlabel('Time index n');
ylabel('Amplitude');
title('y(n) = 3cos(5\pi/6 \cdot n + \pi/3) + 2sin(\pi/4 \cdot n + \pi/5)');

%T1=12
%T2=8
% Nên chu kì của tín hiệu là BCNN(12,8) = 24
T = 24;
hold on;
xline(T, '--r', 'T = 24');
hold off;