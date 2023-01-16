channel_in=XI_t+XQ_t;
figure
plot(timeconv,channel_in)
grid on
xlabel('time axis');
ylabel('channel_in');
title('Periodogram of channel in');
Pchannel_in = (abs(fftshift(fft(channel_in,Nf)*Ts)).^2)/(length(timeconv)*Ts);

figure
semilogy(thz,Pchannel_in)
grid on
xlabel('Frequency(Hz)');
ylabel('Pchannel in');
title('Periodogram of Pchannel in using semilogy')