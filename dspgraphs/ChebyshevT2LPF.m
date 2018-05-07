%Chebyshev TypeII LPF filter

alphaP=15;%passband attenuation
alphaS=45;%stopband attenuation
wp=[0.2];%passband frequency
ws=[0.3];%stopband frequency
[n,wn]=cheb2ord(wp,ws,alphaP,alphaS);
[b,a]=cheby2(n,alphaP,wn);
w=0:0.01:pi;
[h,ph]=freqz(b,a,w);
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
ylabel('Phase in radians');
title('Phase response of LPF');