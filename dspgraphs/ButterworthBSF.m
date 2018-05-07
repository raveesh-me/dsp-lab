%butterworth BSF filter

alphaP=2;%passband attenuation
alphaS=20;%stopband attenuation
wp=[0.3 0.7];%passband frequency
ws=[0.1 0.9];%stopband frequency
[n,wn]=buttord(wp,ws,alphaP,alphaS);
[b,a]=butter(n,wn,'stop');
w=0:0.01:pi;
[h,ph]=freqz(b,a);
m=20*log10(abs(h));
subplot(2,1,1)
plot(ph/pi,m)
grid on;
xlabel('Normalized Frequency');
ylabel('Normalized Gain');
title('Magnitude response of BSF');
subplot(2,1,2)
plot(ph/pi,angle(h));
grid on;
xlabel('Normalized Frequency');
ylabel('Phase in radians');
title('Phase response of BSF');
