%Tính đáp ứng ra của hệ thống: y(n) = n*x(n)+x(n-1)
%Kiểm tra hệ thống có bất biến không

clf;
n = 0:40; D = 10;a = 3.0;b = -2;
x = a*cos(2*pi*0.1*n) + b*cos(2*pi*0.4*n); 
xd = [zeros(1,D) x];

x1 = [0 x 0];
x2 = [0 0 x];
xa = [0 xd 0];
xb = [0 0 xd];

n1 = 0:42;
n2 = 0:52;
y = n1.*x1+x2;
yt = n2.*xa+xb; 
d = y(1:41) - yt(1+D:41+D); 

subplot(3,1,1)
stem(n,y(1:41),'k'); %Đáp ứng ra thực tế
ylabel('Amplitude');
title('Output Due to Weighted Input: a \cdot x_{1}[n] +b \cdot x_{2}[n]');

subplot(3,1,2)
stem(n,yd(1:41),'b'); %Đáp ứng ra dự đoán
ylabel('Amplitude');
title('Weighted Output: a \cdot y_{1}[n] + b \cdot y_{2}[n]');

subplot(3,1,3)
stem(n,d(1:41),'r'); %Sự sai khác giữa thực tế và dự đoán=> tuyến tính or not
xlabel('Time index n');ylabel('Amplitude');
title('Difference Signal');