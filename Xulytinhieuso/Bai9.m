% y(n) - 0,4y(n-1) +0,75y(n-2) = 2,2403x(n) + 2,4908x(n-1) + 2,2403x(n-2)

clf;
n = 0:40;
a = 1;b = 2;
x1 = cos(2*pi*0.1*n);
x2 = cos(2*pi*0.4*n);
x = a*x1 + b*x2;
num = [2.2403 2.4908 2.2403]; % Hệ số của x
den = [1 -0.4 0.75];          % Hệ số của y
ic = [0 0]; 
y1 = filter(num,den,x1,ic); % y1[n]
y2 = filter(num,den,x2,ic); % y2[n]
y = filter(num,den,x,ic);   % y[n]
yt = a*y1 + b*y2; 
d = y - yt; 

subplot(3,1,1)
stem(n,y);
ylabel('Amplitude');
title('Output Due to Weighted Input: a \cdot x_{1}[n] +b \cdot x_{2}[n]');

subplot(3,1,2)
stem(n,yt);
ylabel('Amplitude');
title('Weighted Output: a \cdot y_{1}[n] + b \cdot y_{2}[n]');

subplot(3,1,3)
stem(n,d);
xlabel('Time index n');ylabel('Amplitude');
title('Difference Signal');