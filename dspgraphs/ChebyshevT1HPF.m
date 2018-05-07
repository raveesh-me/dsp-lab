%Chebyshev TypeI HPF filter

alphaP=20;%passband attenuation
alphaS=40;%stopband attenuation
wp=[0.2];%passband frequency
ws=[0.3];%stopband frequency
[n,wn]=cheb1ord(wp,ws,alphaP,alphaS);
[b,a]=cheby1(n,alphaP,wn,'high');
w=0:0.01:pi;
[h,ph]=freqz(b,a,w);
m=20*log10(abs(h));
subplot(2,1,1)
plot(ph/pi,m);
grid on;
xlabel('Normalized Frequency');
ylabel('Normalized Gain');
title('Magnitude response of HPF');
subplot(2,1,2)
plot(ph/pi,angle(h));
grid on;
xlabel('Normalized Frequency');
ylabel('Phase in radians');
title('Phase response of HPF');