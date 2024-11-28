n = 0:40;
n1= 0:50;
f = 0.1;
phase = 0;
A = 1.5;
arg = 2*pi*f*n - phase;

x = A*cos(arg);
x1 = A*cos(2*pi*0.9*n - phase);
x2 = 2.5*cos(2*pi*0.08*n1 - pi/2);

T=1/f
p = (1/41)*sum(x.*x)
p1=mean(x.^2)
T1=1/0.08

clf;
subplot(2,2,1)
stem(n, x);
axis([0 40 -2 2]);
grid;
title("Sinusoidal Sequence");
xlabel("Time index n");
ylabel("Amplitude");

subplot(2,2,2)
stem(n,x1);
axis([0 40 -2 2]);
grid;
title("Do thi cau 5")
xlabel("Time index n");
ylabel("Amplitude");

subplot(2,2,3)
stem(n1,x2);
axis([0 50 -3 3]);
grid;
title("Do thi cau 6")
xlabel("Time index n");
ylabel("Amplitude");

subplot(2,2,4)
stairs(n, x);
axis([0 40 -2 2]);
grid;
title("Sinusoidal Sequence");
xlabel("Time index n");
ylabel("Amplitude");