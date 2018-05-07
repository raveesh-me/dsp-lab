%Original Sequence
w=0:0.01:3*pi
x=[1,2,3,4,5,6,7,8]
N=8
n=0:N-1
subplot(3,3,1)
stem(n,x,'filled')
hold on;
title('Original sequence')

%DFT of sequence
N=8;
n=0:N-1;
k=0:N-1;
wn=exp(-j*2*pi/N*n'*k)
xk=x*wn;
subplot(3,3,2)
stem(2*pi*k/N,abs(xk),'filled')
title('Magnitude');
subplot(3,3,3);
stem(2*pi*k/N,angle(xk),'filled')
hold on;
title('Phase');

%shifted sequence x((n-3) mod8)
n=0:1:N-1
n1=mod((n-3),N)
y1=x(n1+1)
subplot(3,3,4);
stem(n,y1,'filled');
hold on;
title('x(n-3) mod8');

%DFT of sequence
N=8;
n=0:N-1;
k=0:N-1;
wn=exp(-j*2*pi/N*n1'*k)
xk=x*wn;
subplot(3,3,5)
stem(2*pi*k/N,abs(xk),'filled')
title('Magnitude');
subplot(3,3,6);
stem(2*pi*k/N,angle(xk),'filled')
hold on;
title('Phase');

%shifted sequence x((n+3) mod8)
n=0:1:N-1
n2=mod((n+4),N)
y2=x(n2+1)
subplot(3,3,7)
stem(n,y2,'filled');
hold on;
title('x(n+4) mod8');

%DFT of sequence
N=8;
n=0:N-1;
k=0:N-1;
wn=exp(-j*2*pi/N*n2'*k)
xk=x*wn;
subplot(3,3,8)
stem(2*pi*k/N,abs(xk),'filled')
title('Magnitude');
subplot(3,3,9);
stem(2*pi*k/N,angle(xk),'filled')
hold on;
title('Phase');

