[f,t]=srrcpulse(T,over,A,a);
conv1t = [(t(1)+ti(1):Ts:t(end)+ti(end))];
Xc=conv(Xdelta,f)*Ts;
figure
plot(conv1t,Xc);
grid on
xlabel('time(s)');
ylabel('xdelta * SRRCpulse');
title('Convolution Xdelta with SRRC pulse');
legend('X(t)');
