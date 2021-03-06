%B
n = (0:30);

a = [1,-3/10,-1/10];
b = [2,0,0];
delta = @(n)1.0.*(n==0);
Y = [1,2];              %Initial Conditions
z_i = filtic(b, a, Y);  %Finding Initial Conditions
y_0 = filter(b, a, zeros(size(n)),z_i); %Zero Input response
figure;
subplot(4,2,1)
stem(n, y_0, 'k');
title('Part B');
grid;


%C %x = 2cos(2pin/6)(u(n)-u(n-10)
u1= @(n)1.0.*(n>=0); %Unit Step is only 1 when n>=0
x = @(n)2.*cos(2.*pi.*n./6).*(u1(n)-u1(n-10));
y_1 = filter(b,a,x(n));
subplot(4,2,2);
stem(n, y_1, 'g');
title('PartC');
grid;

%D
y_total = filter(b,a,x(n),z_i);
subplot(4,2,3);
stem(n, y_total);
title ('PartD');
grid

%D.2
y_total2 = y_0 + y_1 ;
subplot(4,2,4);
stem(n, y_total2);
title ('PartD2');

%Summing the zero-state respone and the the zero-input response gives the
%same result


