clf;
R = 51;
d =  2*(rand(R,1) - 0.5);%Tín hiệu nhiễu ngẫu nhiên nên luôn thay đổi
m = 0:R-1;
s = 2*m.*(0.9.^m); % Tín hiệu ban đầu
x = s+d';%Tín hiệu bị nhiễu

subplot(2,1,1)
plot(m,d', "-r", m, s, "g--", m, x, "b-.")
xlabel('Time index n');
ylabel('Amplitude');
legend('d[n] ','s[n] ','x[n] ');

x1 = [0 0 0 0 x]; %x(n-2)
x2 = [0 0 0 x 0]; %x(n-1)
x3 = [0 0 x 0 0]; %x(n)
x4 = [0 x 0 0 0]; %x(n+1)
x5 = [x 0 0 0 0]; %x(n+2)
y = (x2 + x3 + x4)/3; %Khử nhiễu bằng tb 3 tín hiệu
y1 = (x1 + x2 + x3 +x4 + x5)/5; %Khử nhiễu bằng tb 5 tín hiệu

subplot(2,1,2);
plot(m,s,'g--',m,y(3:R+2),'r-', m,y1(3:R+2),"k-." ); 
% y từ vị trí 3 đến r+2 vì thêm 2 số 0 nên dịch trung tâm của đoạn
legend( 's[n] ','y[n] ','y1[n]');
xlabel('Time index n');ylabel('Amplitude');
