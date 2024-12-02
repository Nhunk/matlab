clf;
num=[1 -4 3];
den=[1 -1.7 1];
N = 200;
h = impz(num, den, N+1);
parsum=0;
for k = 1:N+1;
    parsum = parsum + abs(h(k))
    if abs(h(k)) < 10^(-6), break, end
end

n = 0:N;
stem(n,h,'r')
xlabel('Time index n'); ylabel('Amplitude');
disp('Value=');disp(abs(h(k))); %Giá trị tại mẫu cuối cùng
%Hệ không ổn định vì nó tuần hoàn thì tới vô cùng vẫn có giá trị