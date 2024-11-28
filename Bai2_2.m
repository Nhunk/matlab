 % Program P1_3
 % Generation of a real exponential sequence
 clf;
 
 n = 0:35; 
 a = 1.2; K = 0.2;
 a1= 0.9; K1 = 20;
 x = K*a.^n;
 x1 = K1*a1.^n;

 nl = sum(x1.*x1);
 disp(nl)

 subplot(2,1,1)
 stem(n,x);
 xlabel('Time index n');ylabel('Amplitude');

 subplot(2,1,2)
 stem(n,x1);
 xlabel('Time index n');ylabel('Amplitude');