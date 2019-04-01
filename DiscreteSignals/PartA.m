%% Lab5 PartA
clc;
N = 10;
n = (0 : N-1);
x1 = exp(1i*2*pi*n*30/100) + exp(1i*2*pi*n*33/100);
x2 = cos(2*pi*n*30/100) + 0.5*cos(2*pi*n*40/100);
fr = n/N;
X1 = fft(x1);
X2 = fft(x2);

figure;
subplot(2,1,1)
stem(fr,real(X1))
subplot(2,1,2)
stem(fr, real(X2))

%2
clc;
N = 500;
n = (0 : N-1);
x1 = exp(j*2*pi*n*30/100) + exp(j*2*pi*n*33/100);
x2 = cos(2*pi*n*30/100) + 0.5*cos(2*pi*n*40/100);

x_1 = [x1,zeros(1,490)];
X_1 = fft(x_1);
x_2 = [x2,zeros(1,490)];
X_2 = fft(x_2);

figure;
subplot(2,1,1);
stem(fft(real(X_1)));
subplot(2,1,2);
stem(fft(real(X_2)));

%3
clc;
N = 100;
n = (0 : N-1);
x1 = exp(1i*2*pi*n*30/100) + exp(1i*2*pi*n*33/100);
x2 = cos(2*pi*n*30/100) + 0.5*cos(2*pi*n*40/100);
fr = n/N;
X1 = fft(x1);
X2 = fft(x2);

figure;
subplot(2,1,1)
stem(fr,real(X1))
subplot(2,1,2)
stem(fr, real(X2))

%4
N = 500;
n = (0 : N-1);
x1 = exp(j*2*pi*n*30/100) + exp(j*2*pi*n*33/100);
x2 = cos(2*pi*n*30/100) + 0.5*cos(2*pi*n*40/100);

x_1 = [x1,zeros(1,400)];
X_1 = fft(x_1);
x_2 = [x2,zeros(1,400)];
X_2 = fft(x_2);

figure;
subplot(2,1,1);
stem(fft(real(X_1)));
subplot(2,1,2);
stem(fft(real(X_2)));







