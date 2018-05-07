%butterworth LPF filter

alphaP=50;
alphaS=100;
wp=0.1;
ws=0.2;
[n,wn]=buttord(wp,ws,alphaP,alphaS);
[b,a]=butter(n,wn);
w=0:0.01:pi;
[h,ph]=freqz(b,a);
m=20*log10(abs(h));
subplot(2,1,1)
plot(ph/pi,m)
grid on;
xlabel('Normalized Frequency');
ylabel('Normalized Gain');
title('Magnitude response of LPF');
subplot(2,1,2)
plot(ph/pi,angle(h));
grid on;
xlabel('Normalized Frequency');
ylabel('Normalized Gain');
title('Phase response of LPF');
