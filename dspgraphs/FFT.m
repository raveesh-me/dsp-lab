%FFT

xn=[0 1 2 3];
x8f=fft(xn,8);
n1=8;
k1=0:n1-1;
x1=abs(x8f)
stem(k1,abs(x8f),'filled');
xlabel('k');
ylabel('|x(k)|');
title('8-point DFT');
