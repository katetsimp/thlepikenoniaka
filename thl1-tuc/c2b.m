T=0.1;
N=50;
b=(sign(randn(N,1))+1)/2;
X=bitsto2PAM(b);
over=10;
Ts=T/over;
A=5;
a=0.5;
Xdelta = (1/Ts)* upsample(X,over);
figure
ti=(0:Ts:N*T-Ts);
stem(ti, Xdelta);
hold on
grid on
title('Function Xdelta');
xlabel('Time (s)')
ylabel('Xdelta')
