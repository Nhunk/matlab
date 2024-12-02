clf;
% N=40;
% num = [2.2403 2.4908 2.2403];
% den = [1 -0.4 0.75];
% h = impz(num, den, N); %h(n) đáp ứng xung của hệ thống
% 
% stem(h);
% xlabel("Time index n");ylabel("Amplitude");
% title("Impulse Response");grid;

N = 45;
num = [0.9 -0.45 0.35 0.002];
den = [1 0.7 -0.46 -0.62];
h = impz(num, den, N); %h(n) đáp ứng xung của hệ thống

stem(h);
xlabel("Time index n");ylabel("Amplitude");
title("Impulse Response");grid;