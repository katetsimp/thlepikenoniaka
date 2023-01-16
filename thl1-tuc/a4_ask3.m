F0 = 2000;

XI_t = Xiconv.*(2*cos(2*pi*F0*timeconv));
XQ_t = Xqconv.*(-2*sin(2*pi*F0*timeconv));
PFX_I = abs(fftshift(fft(XI_t, Nf)).*Ts).^2./(length(timeconv)*Ts);
PFX_Q = abs(fftshift(fft(XQ_t, Nf)).*Ts).^2./(length(timeconv)*Ts);
figure
subplot(2,1,1);
plot(timeconv,XI_t);
title('XImod');
xlabel('Time axis');
ylabel('XImod');
subplot(2,1,2);
plot(timeconv,XQ_t);
title('XQmod');
xlabel('Time axis');
ylabel('XQmod');

figure
subplot(2,1,1);
semilogy(thz,PFX_I,'cyan')
grid on
xlabel('Frequency(Hz)');
ylabel('PXImod');
title('Periodogram of PXImod using semilogy');
subplot(2,1,2);
semilogy(thz,PFX_Q,'black')
grid on
xlabel('Frequency(Hz)');
ylabel('PXQmod');
title('Periodogram of PXQmod using semilogy');
