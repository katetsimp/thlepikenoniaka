Nf = 2048;
T = 0.001;
over = 10;
Ts = T/over;
a = 0.5;
Fs = 1/Ts;
[f1, t1] = srrcpulse(T, over, A, a);
N_bits = length(bit_seq);
XI=X_in(1:N_bits,1);
XQ=X_in(1:N_bits,2);
Xid = 1/Ts * upsample(XI,over);
Xiconv = conv(Xid, f1)*Ts;
Xqd = 1/Ts * upsample(XQ,over);
Xqconv = conv(Xqd, f1)*Ts;
n = [0:Ts:(N_bits -1)]*T;

timeconv = linspace( min(t1)+ min(n), max(t1)+max(n), length(Xiconv));
 timeconv = timeconv';
figure
subplot(2,1,1);
plot(timeconv,Xiconv)
title('XI(t)');
ylabel('XI');
xlabel('Time axis');
subplot(2,1,2);
plot(timeconv,Xqconv)
title('XQ(t)');
ylabel('XQ');
xlabel('Time axis');
Xi1 = (abs(fftshift(fft(Xiconv,Nf)*Ts)).^2)/(length(timeconv)*Ts);
Xq1 = (abs(fftshift(fft(Xqconv,Nf)*Ts)).^2)/(length(timeconv)*Ts);
thz = -Fs/2:Fs/Nf:Fs/2 - Fs/Nf;
figure
subplot(2,1,1);
semilogy(thz,Xi1,'cyan')
grid on
xlabel('Frequency(Hz)');
ylabel('PXI');
title('Periodogram of PXI');
subplot(2,1,2);
semilogy(thz,Xq1,'black')
grid on
xlabel('Frequency(Hz)');
ylabel('PXQ');
title('Periodogram of PXQ ');

