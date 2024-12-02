% Kiểm tra hệ bất biến
% kiểm tra T[x(n-k)] = y(n-k)

clf;
n = 0:40; 
D = 10;
a = 3.0;b = -2;
x = a*cos(2*pi*0.1*n) + b*cos(2*pi*0.4*n); 
xd = [zeros(1,D) x]; %x(n-k) dịch đi k đoạn
num = [2 0 2.5 1.5 0 1 0];
den = [0.5 -3.5 1.5 0 -2.5 0 1];
ic = [0 0 0 0 0 0];

% T[x(n-k)] = thay các n trong x(n) thành n-k
y = filter(num,den,x,ic); 

%y(n-k) => thay tất cả n có trong pt thành n-k
yd = filter(num,den,xd,ic);
d = y - yd(1+D:41+D); % 

% Tín hiệu thực tế
subplot(3,1,1)
stem(n,y);
ylabel('Amplitude'); 
title('Output y[n]'); grid;

%Tín hiệu sau khi dịch
subplot(3,1,2)
stem(n,yd(1:41));
ylabel('Amplitude');
title(['Output due to Delayed Input x[n Ð', num2str(D),']']); grid;

%Nếu sự khác biệt bằng 0 thì tín hiệu bất biến và ngược lại
subplot(3,1,3)
stem(n,d);
xlabel('Time index n'); ylabel('Amplitude');
title('Difference Signal'); grid;