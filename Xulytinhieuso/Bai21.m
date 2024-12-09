clf;
w = -pi : 2*pi/255 : pi;
wo = -0.2*pi;
num1 = [1 3 5 7 9 11 13 15 17];
L=length(num1);
h1=freqz(num1, 1, w );

n = 0:L-1;
num2=exp(wo*i*n).*num1;
h2 = freqz(num2, 1, w );

subplot(2,2,1)
plot(w/pi, abs(h1)); grid;
title('Mahnitude Spectrum of Original Sequence')
xlabel('Normalized Frequency (\times \pi rad/sample)')
ylabel('Magnitude')

subplot(2,2,2)
plot(w/pi, abs(h2)); grid;
title('Mahnitude Spectrum of Time-Shifted Sequence')
xlabel('Normalized Frequency (\times \pi rad/sample)')
ylabel('Magnitude')

subplot(2,2,3)
plot(w/pi, angle(h1));grid;
title('Phase Spectrum of Original Sequence')
xlabel('Normalized Frequency (\times \pi rad/sample)')
ylabel('Phase (radians)')

subplot(2,2,4)
plot(w/pi, angle(h2));grid;
title('Phase Spectrum of Time-Shifted Sequence')
xlabel('Normalized Frequency (\times \pi rad/sample)')
ylabel('Phase (radians)')