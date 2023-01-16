N = 2048;
Fs = 1/Ts;
thz = -Fs/2:Fs/N:Fs/2-Fs/N;
F1 = fftshift(fft(f1,N)*Ts);
F2 = fftshift(fft(f2,N)*Ts);
F3 = fftshift(fft(f3,N)*Ts);
figure
plot(thz, abs(F1).^2, 'black');
hold on
plot(thz, abs(F2).^2, 'red');
hold on
plot(thz, abs(F3).^2, 'green');
hold on
grid on
legend('a = 0', 'a = 0.5','a = 1');
xlabel('Frequency(Hz)');
ylabel('|F(F)|^2');
title('A2 : Plots')
figure(2)
semilogy(thz, abs(F1).^2, 'black');
hold on
semilogy(thz, abs(F2).^2, 'red');
hold on
semilogy(thz, abs(F3).^2, 'green');
hold on
grid on
legend('a = 0', 'a = 0.5','a = 1');
xlabel('Frequency(Hz)');
ylabel('|F(F)|^2');
title('A2 : semilogy')

