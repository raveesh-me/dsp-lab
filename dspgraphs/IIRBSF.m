%IIR band stop filter

w=0:0.01:pi
NUM1=[0.95 -2*0.6*0.95 0.95];
DEN1=[1 -0.6*1.9 0.9];
H1=freqz(NUM1,DEN1,w);
M1=20*log10(abs(H1));
subplot(2,2,1);
plot(w/pi,M1);
hold on;

NUM2=[0.8 -2*0.6*0.8 0.8];
DEN2=[1 -0.6*1.6 0.6];
H2=freqz(NUM2,DEN2,w);
M2=20*log10(abs(H2));
plot(w/pi,M2);
hold on;

NUM3=[0.65 -2*0.6*0.65 0.65];
DEN3=[1 -0.6*1.3 0.3];
H3=freqz(NUM3,DEN3,w);
M3=20*log10(abs(H3));
plot(w/pi,M3);
hold on;
grid on
legend('a=0.9','a=0.6','a=0.3','location','southeast')
xlabel('Normalized Frequency');
ylabel('Normalized Gain');
title('Magnitude response of IIR BSF');

subplot(2,2,2);
zplane(NUM1,DEN1);
title('Z-plane plot at a=0.9')
subplot(2,2,3);
zplane(NUM2,DEN2);
title('Z-plane plot at a=0.6')
subplot(2,2,4);
zplane(NUM3,DEN3);
title('Z-plane plot at a=0.3');