%LPF using Hamming Window Method

wc=0.5*pi;
N=25
b=fir1(N,wc/pi,hamming(N+1));
w=0:0.1:pi;
h=freqz(b,1,w);
plot(w/pi,abs(h));
hold on;
grid on;
xlabel('Normalized Frequency')
ylabel('Magnitude')
title('LPF using Hamming Window Method')