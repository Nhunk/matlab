%Num là hệ sô của x và là tử số
%Den là hệ số của y và là mẫu số
%zplane vẽ điểm cực điểm không: zplane(num,den) zplane(zeros, poles)
%[z,p,k] = tf2zp(num,den) => có num den tìm điểm cực điểm 0
% có điểm cực điểm không muốn tìm num den=> [num,den] = zp2tf[zeros,poles]
clf;
% num = [1 2 3]
% den = [2 1 4 7]
% zplane(num,den)
% 
% %b,c
% [z,p,k] = tf2zp(num,den)

%d
z=[0.7; 0.3];
p=[0.2+0.1i; -0.4-0.5i];
k=0.3;
[num,den] = zp2tf(z,p,k)
zplane(z,p)

