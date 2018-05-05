%Plot DTFT
w = 0: 0.1: 2*pi;
xw = 1 + exp(-j*1*w) + exp(-j*2*w) + exp(-j*3*w);
subplot(2,2,1);
plot(w, abs(xw));
grid on;
hold on;
title("DTFT");
xlabel('frequency');
ylabel('amplitude');

% 4-point DTFT
xn = ones(1,4);
N = 4;
n = 0 : N-1;
k = 0 : N-1;
wn = exp(-j*2*pi/N*n'*k);
xk = xn * wn;
subplot(2,2,2);
plot(w, abs(xw));
hold on;
stem(2*pi*k/N, abs(xk), 'filled');
hold on;
grid on;
title('4 point DFT');
xlabel('frequency');
ylabel('amplitude');

%8-point DFT
xn = [ones(1,4) zeros(1,4)];
N = 8;
n = 0 : N-1;
k = 0 : N-1;
wn = exp(-j*2*pi/N*n'*k);
xk = xn * wn;
subplot(2,2,3);
plot(w, abs(xw));
hold on;
stem(2*pi*k/N, abs(xk), 'filled');
hold on;
grid on;
title('8-point DFT');
xlabel('frequency');
ylabel('amplitude');

%16 point DFT
xn = [ones(1,4) zeros(1,12)];
N = 16;
n = 0 : N-1;
k = 0: N-1;
wn = exp(-j*2*pi/N*n'*k);
xk = xn * wn;
subplot(2,2,4);
plot(w, abs(xw));
hold on;
stem(2*pi*k/N, abs(xk), 'filled');
grid on;
title('16-point DFT');
xlabel('frequency');
ylabel('amplitude');
axis([0 7 0 4]);