clf;

w = -2*pi : 4*pi/255 : 2*pi;
D = 15;
num = [4 5];
den = [1 -1 -12];
h1 = freqz(num, 1, w );
h2 = freqz([zeros(1, D) num], 1, w);

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