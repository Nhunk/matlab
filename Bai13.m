%program P2_6
%Hệ ổn định => Trắc nghiệm: tổng đáp ứng xung bé hơn vô cùng
clf;
num =[1 -0.8];%hệ số x
den = [1 1.5 0.9];% hệ số y
N = 200;
h = impz(num, den, N+1); % đáp ứng xung h(n)
parsum = 0;
for k = 1: N+1;
    parsum = parsum +abs(h(k));%Hàm giảm thì ổn định(tiến về 0 thì có limit)
    if abs(h(k)) < 10^(-6), break, end % Giới hạn quá nhỏ xem như bằng 0
end
%Matlab tất cả đều có giới hạn nên cần vẽ biểu đồ
%plot the impulse response
n = 0:N;
stem(n, h,'r')
xlabel('Time index n');ylabel('Amplitude');
disp('Value=');disp(abs(h(k)));
disp('Xicma|h(n)|');disp(parsum);
%Hệ ổn định