%Chebyshev Type2 BSF filter

alphaP=10;%passband attenuation
alphaS=200;%stopband attenuation
wp=[0.3 0.7];%passband frequency
ws=[0.1 0.9];%stopband frequency
[n,wn]=cheb2ord(wp,ws,alphaP,alphaS);
[b,a]=cheby2(n,alphaP,wn,'stop');
w=0:0.01:pi;
[h,ph]=freqz(b,a,w);
m=20*log10(abs(h));
subplot(2,1,1)
plot(ph/pi,m);
grid on;
xlabel('Normalized Frequency');
ylabel('Normalized Gain');
title('Magnitude response of BSF');
axis([0 1 -200 50])
subplot(2,1,2)
plot(ph/pi,angle(h));
grid on;
xlabel('Normalized Frequency');
ylabel('Phase in radians');
title('Phase response of BSF');