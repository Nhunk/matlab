clf;
num = [4 5];
den = [1 -1 -12];

[z,p,k]=tf2zp(num,den)
zplane(num,den)


[r,q,i] = residuez(num,den)


