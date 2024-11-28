%Cau 2_1: Kiểm tra sự tuyến tính của hệ thống:

clf;
n = 0:60;
a = 2;b = -3;
x1 = cos(2*pi*0.02*n);
x2 = cos(2*pi*0.05*n);
x = a*x1 + b*x2;
num = [3 5 0 -2 1 0];   % Hệ số của x
den = [2 0 -4 1 0 -2];  % Hệ số của y
ic = [0 0 0 0 0 ];

%T[x(n)] = ax1(n) + bx2
y = filter(num,den,x,ic); 

% y(n) =ay1[x(n)] +by2[x(n)]
y1 = filter(num,den,x1,ic); 
y2 = filter(num,den,x2,ic); 
yt = a*y1 + b*y2; 
d = y - yt; 

subplot(3,1,1)
stem(n,y,'k');
ylabel('Amplitude');
title('Output Due to Weighted Input: a \cdot x_{1}[n] +b \cdot x_{2}[n]');

subplot(3,1,2)
stem(n,yt,'b');
ylabel('Amplitude');
title('Weighted Output: a \cdot y_{1}[n] + b \cdot y_{2}[n]');

subplot(3,1,3)
stem(n,d,'r');
xlabel('Time index n');ylabel('Amplitude');
title('Difference Signal');
% Phương trình không tuyến tính vì từ biểu đồ khác biệt d ta thấy có những điểm khác không