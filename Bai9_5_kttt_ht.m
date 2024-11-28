%Tính đáp ứng ra của hệ thống y(n) = x(n)*x(n-1)
%Kiểm tra hệ thống có tuyến tính không

clf;
n = 0:50;
a = 2; b = -3;
x1 = cos(2*pi*0.5*n);
x2 = cos(2*pi*0.4*n);
x = a*x1 + b*x2;

xa = [0 x 0];  
xb = [0 0 x];
xa1 = [0 x1 0];  
xb1 = [0 0 x1]; 
xa2 = [0 x2 0];  
xb2 = [0 0 x2]; 

% y(n) = x(n)*x(n-1)
y1 = xa1.*xb1  %Đáp ứng ra của x1
y1 = y1(1:51);
y2 = xa2.*xb2; %Đáp ứng ra của x2
y2 = y2(1:51);
y = xa.*xb;     %Đáp ứng ra của x
y = y(1:51);
yt = a*y1 + b*y2; 
d = y - yt; 

subplot(3,1,1)
stem(n,y,'k'); %Đáp ứng ra thực tế
ylabel('Amplitude');
title('Output Due to Weighted Input: a \cdot x_{1}[n] +b \cdot x_{2}[n]');

subplot(3,1,2)
stem(n,yt,'b'); %Đáp ứng ra dự đoán
ylabel('Amplitude');
title('Weighted Output: a \cdot y_{1}[n] + b \cdot y_{2}[n]');

subplot(3,1,3)
stem(n,d,'r'); %Sự sai khác giữa thực tế và dự đoán=> tuyến tính or not
xlabel('Time index n');ylabel('Amplitude');
title('Difference Signal');