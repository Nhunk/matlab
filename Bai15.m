clf;

%Cau a: Tính và hiển thị các điểm cực và điểm không:

num = [0.9 0.7 -0.5 0.3 1];
den = [1 0.3 -0.5 0.7 0.9];

[z,p,k] = tf2zp(num,den) % Tính điểm cực và điểm không
zplane(num,den); % Hiển thị các điểm z, p (đầu vào num den -> vector hàng)
%Bậc tử mẫu bằng nhau thì sẽ không có điểm không (0,0)