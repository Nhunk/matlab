% Program P1_2
 % Generation of a complex exponential sequence
 clf;

 c = -(1/12)+(pi/6)*i;
 c1 = 1/12+(pi/6)*i;
 K = 2;
 n = 0:40;
 x = K*exp(c*n);
 x1 = K*exp(c1*n);

 subplot(2,2,1);
 stem(n,real(x));
 xlabel('Time index n');ylabel('Amplitude');
 title('Real part');

 subplot(2,2,2);
 stem(n,imag(x));
 xlabel('Time index n');ylabel('Amplitude');
 title('Imaginary part');

 subplot(2,2,3);
 stem(n,real(x1));
 xlabel('Time index n');ylabel('Amplitude');
 title('Real part');

 subplot(2,2,4);
 stem(n,imag(x1));
 xlabel('Time index n');ylabel('Amplitude');
 title('Imaginary part');
