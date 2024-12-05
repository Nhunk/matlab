clf;

% Cho hệ sau: y(n) - 2y(n-1) - 15y(n-2) = 2x(n) - 3x(n-1)
% a. Tính H(z);
% b. zplane, xác định giá trị
% c. Tìm h(n) khi hệ nhân quả;
% d. Tính DTFT tại 200 điểm;
% Giải:

num = [2 -3 0];
den = [1 2 -15];
% Từ num và den viết được hàm truyền đạt của hệ thống
% => h(n)= (2-3z^-1) / (1 + 2z^(-1) - 15z^(-2))

zplane(num, den)


% Dùng residuez tính điểm cực và thặng dư của điểm cực
[r,p,k] = residuez(num,den)
% r =    1.6250 0.3750
% p =    -5     3
% Từ đó ta viết được H(z) = 1,625.(1/1+5z^-1) + 0.375.(1/1-3z^-1)
% Hệ nhân quả khi ROC(miền hội tụ) nằm ngoài điểm cực xa gốc nhất là 5
% |z|>5 : h(n)= 1,625.(-5)^n.u(n) + 0,375.3^n.u(n)


w = -4*pi:8*pi/199:4*pi;
h = freqz(num, den, w);


%plot the DTFT
subplot(2,1,1)
plot(w/pi,real(h));grid;
title('Real part of H(e^{j\omega})');
xlabel('omega/\pi');
ylabel('Amplotude');

subplot(2,1,2)
plot(w/pi,real(h));grid;
title('Real part of H(e^{j\omega})');
xlabel('omega/\pi');
ylabel('Amplotude');

pause

subplot(2,1,1)
plot(w/pi,abs(h));grid;
title('Magnitude Spectrum | H(e^{j\omega}) |');
xlabel('omega/\pi');
ylabel('Amplotude');

subplot(2,1,1)
plot(w/pi,angle(h));grid;
title('Phase Spectrum arg[H(e^{j\omega})]');
xlabel('omega/\pi');
ylabel('Amplotude');