clf;
num = [4 -5 0];
den = [1 2 -8];
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