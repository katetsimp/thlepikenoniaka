a=300;
t_filter= [-1.3:dt:1.3];
N_FILTER=length(t_filter);
f_filter=[-fs/2:fs/N_FILTER:fs/2-fs/N_FILTER];
filter=a*sinc(a*t_filter);
Y = fftshift(fft(filter)*dt);
plot(f_filter,abs(Y));
xlabel('Frequency(Hz)');
ylabel('|X(F)|');
title('filter with N=length(t)')