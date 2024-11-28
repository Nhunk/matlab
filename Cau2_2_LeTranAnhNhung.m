%Câu 2_2: Kiểm tra sự tuyến tính của hệ thống :
% y(n) = nx(n-1)x(n+1)

clf;
n = 0:50;
a = 2; b = -3;
x1 = cos(2*pi*0.5*n);
x2 = cos(2*pi*0.4*n);
x = a*x1 + b*x2;

xa = [x 0 0];  
xc = [0 0 x];
xa1 = [x1 0 0];
xc1 = [0 0 x1]; 
xa2 = [x2 0 0];  
xc2 = [0 0 x2]; 

n1=0:52

% y(n) = nx(n-1)x(n+1)
y1 = n1.*xa1.*xc1;
y1 = y1(1:51);
y2 = n1.*xa2.*xc2;
y2 = y2(1:51);
y = n1.*xa.*xc;   
y = y(1:51);
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