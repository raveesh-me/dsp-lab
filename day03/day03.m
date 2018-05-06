%{
Sequence is x(n) = {1,2,3,4,5,6,7,8} 
plot sequence and DFT for 
1> Sequence
2> x(n-3)<8>
3> x(n+4)<8>
%}

%Original Sequence
subplot(3,3,1)
x = [1, 2, 3, 4, 5, 6, 7, 8];
N = 8;
n = 0: N-1;
stem(n, x, 'filled');
hold on;
grid on;
title('original sequence');
xlabel('index');
ylabel('value');

%Original sequence DFT
subplot(3,3,2)
w = 0 : 0.1 : 2*pi;
n = 0: N-1;
k = 0: N-1;
wn = exp(-j*2*pi/N*n'*k);
xk = x*wn;
stem(2*pi*k/N, abs(xk), 'filled');
hold on;
grid on;
title('DFT: magnitude');
xlabel('frequency');
ylabel('amplitude');

subplot(3,3,3)
stem(2*pi*k/N, angle(xk), 'filled');
hold on;
grid on;
title('DFT: phase');
xlabel('frequency');
ylabel('amplitude');

%Right Shift Sequence
subplot(3,3,4)
n = 0: N-1;
n1 = mod(n-3, N); 
%{
this makes the index circular.
when n-3 < 0, n1 = (n-3)-(-1*N) = (n-3) + N
when n-3 >= 0, n1 = n-3
this gives for
n = 0, n1 = -3+8 = 5
n = 1, n1 = -2+8 = 6
n = 2, n1 = -1+8 = 7
n = 3, n1 = 0 = 0
n = 4, n1 = 1 = 1
n = 5, n1 = 2 = 2
n = 6, n1 = 3 = 3
n = 7, n1 = 4 = 4
Thus completing the criteria for circular/periodic right shifting
%}
y1 = x(n1 + 1);
subplot(3,3,4);
stem(n, y1, 'filled');
hold on;
grid on;
title('right shift by 3 indices x(n-3)');
xlabel('frequency');
ylabel('amplitude');

%DFT of right shift sequence
subplot(3,3,5)