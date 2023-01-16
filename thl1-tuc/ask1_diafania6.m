%6.ask1/kladika 
clear all;
dt=0.01;
t=[-10:dt:10];
x=zeros(size(t));
x(t>=-8 & t<-1.3) = exp(t(t>=-8 & t<=-1.3)).*(t(t>=-8 & t<=-1.3)).^(-2).*cos(8*pi*t(t>=-8 & t<=-1.3));
x(t>=-1.3 & t<=1.3)=1/4.*(1.32- abs(t(t>=-1.3 & t<=1.3))).*exp(abs(t(t>=-1.3 & t<=1.3)));
x(t>1.3 & t<=8)=1/30.*sin(210*pi*t(t>1.3 & t<=8)).*exp(abs(t(t>1.3 & t<=8))/3);
figure
plot(t,x);
xlabel('time(s)');
ylabel('x');
title('x(t)')
N= 2.^13;
fs=1/dt;
f=[-fs/2:fs/N:fs/2-fs/N];
XF1=fftshift(fft(x,N)*dt);
figure;
plot(f,abs(XF1));
xlabel('Frequency(Hz)');
ylabel('|X(F)|');
title('N=2^1^3')
a = 120;
t_f=[-2.5:dt:2.5];
y =a.*sinc(a*t_f);
Y =fftshift(fft(y).*dt);
Nd=length(t_f);
FD=-fs/2:fs/Nd:fs/2-fs/Nd;
figure;
plot(FD,abs(Y));
axis([-60 60  0 4]);
xlabel('Frequency(Hz)');
ylabel('|Y(F)|');
title('FILTER')
t_conv=t(1)+t_f(1):dt:t(end)+t_f(end);
z = conv(x,y)*dt;
Ndemod=length(t_conv);
FDem=-fs/2:fs/Ndemod:fs/2- fs/Ndemod;
figure;
plot(t_conv,z);
xlabel('time(s)');
ylabel('z');
title('conv')
Z=fftshift(fft(z)*dt);
figure;
plot(FDem,abs(Z));
xlabel('Frequency(Hz)');
ylabel('|Z(F)|');
title('conv')







