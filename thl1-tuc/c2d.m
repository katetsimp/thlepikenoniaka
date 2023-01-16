
N1 = flip(f);
N1(end) = f(1);
conv2t =(t(1)+conv1t(1): Ts: t(end) + conv1t(end));
Z=conv(N1,Xc)*Ts;
figure
plot(conv2t,Z,'b');
hold on
stem ([0:N-1]*T, X, 'red');
legend ('Z(t)', 'Xk');
xlabel('time(s)');
title('Convolution X(t) with f(-t) pulse');