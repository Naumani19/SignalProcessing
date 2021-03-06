%% Part C
clc
N = 35;
Omega = linspace(0,2*pi*(1-1/N),N);
H_d = @(Omega)(mod(Omega,2*pi)>(2*pi)/3) + (mod(Omega,2*pi)<2*pi-(2*pi/3));                                                                % fundamental period of x[n]
H = H_d(Omega);
h = real(ifft(H));
H = freqz(h,1,0:2*pi/1001:2*pi);

figure;
subplot(2,1,1)
stem(h)
subplot(2,1,2)
plot(abs(H))

%C.3
%The result in part 2 is different from the filter we started with since it
%is represented in frequency domain and represents the magnitude
%The original filter is in time domain and is only the impulse response.
%The figure in part 1 represents a sinc function, whic is a rect function
%in frequency domain. 
% However, as we notice the function is not completely what we would expect from an ideal filter. 
clc
N = 71;
Omega = linspace(0,2*pi*(1-1/N),N);
H_d = @(Omega)(mod(Omega,2*pi)>(2*pi)/3) + (mod(Omega,2*pi)<2*pi-(2*pi/3));                                                                % fundamental period of x[n]
H = 1.0 * H_d(Omega);
h = real(ifft(H));
H = freqz(h,1,0:2*pi/1001:2*pi);

figure;
subplot(2,1,1)
stem(h)
subplot(2,1,2)
plot(abs(H))

%C.4
%Now we notice that the filter resembles more like an ideal filter. In the
%frequency domain the points at the top of the filter are smaller and seem
%to resemble a linear line much like an ideal filter, hence it is more
%accurate.


