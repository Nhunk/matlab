clf;

% Một hàm ở miền Z được cho bởi công thức X(z)=(1+2z^-1)/(1+4z^(-1)+3z^(-2)
% Hàm residuez tính các điểm cực, thặng dư tại các điểm cực
% [R, P, K] = residuez(B,A) . Hệ số của B(z)/A(z)

B = [1 2];
A = [1 4 3];
[r,p,k] = residuez(B,A)

% Kết quả ta được:
% R = [0.5 0.5]
% P = [-3 -1]
% => X(z)= 0.5/(1+3z^(-1)) + 0.5/(1+z^(-1))