%plot DTFT
w=0:0.1:2*pi;
xw=1 + exp(-j*1*w) + exp(-j*2*w)+ exp(-j*3*w)
subplot(2,2,1);
plot(w,abs(xw)); 
title('DTFT');
xlabel('frequency');
ylabel('amplitude');

%4 point DTFT

xn=ones(1,4)
N=4;
n=0:N-1;
k=0:N-1;
wn=exp(-j*2*pi/N*n'*k);
xk=(xn*wn);
subplot(2,2,2)
plot(w,abs(xw));
hold on;
stem(2*pi*k/N,abs(xk),'filled')
hold on;
title('4-Point DTFT');
xlabel('frequency');
ylabel('amplitude');

%8 point DTFT

xn=[ones(1,4) zeros(1,4)]
N=8;
n=0:N-1;
k=0:N-1;
wn1=exp(-j*2*pi/N*n'*k);
xk1=(xn*wn1);
subplot(2,2,3)
plot(w,abs(xw));
hold on;
stem(2*pi*k/N,abs(xk1),'filled')
hold on;
title('8-Point DTFT');
xlabel('frequency');
ylabel('amplitude');

%16 point DTFT

xn=[ones(1,4) zeros(1,4) zeros(1,4) zeros(1,4)]
N=16;
n=0:N-1;
k=0:N-1;
wn2=exp(-j*2*pi/N*n'*k);
xk2=(xn*wn2);
subplot(2,2,4)
plot(w,abs(xw));
hold on;
stem(2*pi*k/N,abs(xk2),'filled')
hold on;
title('16-Point DTFT');
xlabel('frequency');
ylabel('amplitude');
