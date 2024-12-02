clf;
%Tính và hiển thị điểm cực, điểm không của hệ LTI sau:
num=[2 3 -1]
den = [1 2 3 0 -1.5 -1]

[z,p,k]=tf2zp(num,den)
zplane(num,den)