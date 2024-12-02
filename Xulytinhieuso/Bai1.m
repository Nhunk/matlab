%Chương trình P1_1
%Tạo và vẽ chuỗi xung đơn vị 
clf;

n = -10:20;
u = [zeros(1,10) 1 zeros(1,20)];
u1 = [zeros(1,15) 1 zeros(1,15)];
u2 = [zeros(1,10) ones(1,21)];
u3 = [zeros(1,5) ones(1,26)];

subplot(2,2,1)
stem(n,u,LineWidth=0.75);
xlabel("Chỉ số thời gian n"); ylabel("Biên độ");
title("Chuỗi xung đơn vị \delta[n]");
axis([-10 20 0 1.2]);

%2.Chuỗi cung đơn vị trễ 5 mẫu
subplot(2,2,2)
stem(n,u1,LineWidth=0.75);
xlabel("Chỉ số thời gian n"); ylabel("Biên độ");
title("Chuỗi xung đơn vị trễ 5 mẫu \delta[n-5]");
axis([-10 20 0 1.2]);

%3. Dãy nhảy bậc đơn vị u[n]
subplot(2,2,3)
u2 = [zeros(1,10) ones(1,21)];
stem(n,u2, LineWidth=0.75);
xlabel("Chỉ số thời gian n"); ylabel("Biên độ");
title("Dãy nhảy bậc đơn vị u[n]");
axis([-10 20 0 1.2]);

%4. Dãy nhảy bậc đơn vị sớm 5 mẫu u[n+5]
subplot(2,2,4)
stem(n, u3, LineWidth=0.75);
xlabel('Chỉ số thời gian n'); ylabel('Biên độ');
title('Dãy nhảy bậc đơn vị sớm 5 mẫu u[n + 5]');
axis([-10 20 0 1.2]);