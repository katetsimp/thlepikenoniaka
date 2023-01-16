close all;
clear ;
T=0.01;
over=10;
Ts=T/over;
A=4;
a= 0.5;
[f,t]=srrcpulse( T,over,A,a);
N = 2048;
Fs = 1/Ts;
thz = -Fs/2:Fs/N:Fs/2-Fs/N;
F1 = fftshift(fft(f,N)*Ts);
figure
semilogy(thz, abs(F1).^2, 'black');
grid on
legend( 'a = 0.5');
xlabel('Frequency(Hz)');
ylabel('|F(F)|^2');
title('A2 : semilogy')




