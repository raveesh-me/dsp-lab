%Original Sequence
w=0:0.01:3*pi
x=[1,2,3,4,5,6,7,8,0,0]
N=10
n=0:N-1
subplot(2,3,1)
stem(n,x,'filled')
hold on;
title('Original sequence');

%DFT of sequence
N=10;
n=0:N-1;
k=0:N-1;
wn=exp(-j*2*pi/N*n'*k)
xk=x*wn;
subplot(2,3,2)
stem(2*pi*k/N,abs(xk),'filled')
title('Magnitude');
subplot(2,3,3);
stem(2*pi*k/N,angle(xk),'filled')
hold on;
title('Phase');

%shifted sequence x((-n) mod10)
n=0:1:N-1
n1=mod((-n),N)
y1=x(n1+1)
subplot(2,3,4);
stem(n,y1,'filled');
hold on;
title('x((-n) mod10)');

%DFT of sequence
N=10;
n=0:N-1;
k=0:N-1;
wn=exp(-j*2*pi/N*n1'*k)
xk=x*wn;
subplot(2,3,5)
stem(2*pi*k/N,abs(xk),'filled')
title('Magnitude');
subplot(2,3,6);
stem(2*pi*k/N,angle(xk),'filled')
hold on;
title('Phase');