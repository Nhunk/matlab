clf; 

num = [4 5];
den = [1 -1 -12];

w = -4*pi : 8*pi/449 : 4*pi;
h = freqz(num,den,w);

%plot the DTFT
subplot(2,2,1)
plot(w/pi,real(h));grid;
title('Real part of H(e^{j\omega})');
xlabel('omega/\pi');
ylabel('Amplotude');

subplot(2,2,2)
plot(w/pi,real(h));grid;
title('Real part of H(e^{j\omega})');
xlabel('omega/\pi');
ylabel('Amplotude');


subplot(2,2,3)
plot(w/pi,abs(h));grid;
title('Magnitude Spectrum | H(e^{j\omega}) |');
xlabel('omega/\pi');
ylabel('Amplotude');

subplot(2,2,4)
plot(w/pi,angle(h));grid;
title('Phase Spectrum arg[H(e^{j\omega})]');
xlabel('omega/\pi');
ylabel('Amplotude');