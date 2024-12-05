clf;
w = -4*pi:8*pi/511:4*pi;
num = [2 1];
den = [1 -0.6];
h = freqz(num, den, w);

%plot the DTFT
subplot(2,1,1)
plot(w/pi,real(h));grid;
title('Real part of H(e^{j\omega})');
xlabel('omega/\pi');
ylabel('Amplotude');

subplot(2,1,2)
plot(w/pi,real(h));grid;
title('Real part of H(e^{j\omega})');
xlabel('omega/\pi');
ylabel('Amplotude');

pause

subplot(2,1,1)
plot(w/pi,abs(h));grid;
title('Magnitude Spectrum | H(e^{j\omega}) |');
xlabel('omega/\pi');
ylabel('Amplotude');

subplot(2,1,1)
plot(w/pi,angle(h));grid;
title('Phase Spectrum arg[H(e^{j\omega})]');
xlabel('omega/\pi');
ylabel('Amplotude');