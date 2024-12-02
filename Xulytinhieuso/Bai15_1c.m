clf;
z = [0.3;2.5;0.2+0.4i;-0.2-0.4i];
p = [0.5;-0.75;0.6+0.7i;0.6-0.7i];
k=3.9;

zplane(z,p)%z,p phải là những vector cột
[num,den]=zp2tf(z,p,k)