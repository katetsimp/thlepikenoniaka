A=5;
k=0:2*A;
figure(1)
plot(t1, f1, 'red')
hold on
plot(t2, f2, 'black')
hold on
plot(t3, f3, 'green')
hold on
grid on
legend('a = 0', 'a = 0.5','a = 1');
xlabel('Time(s)');
ylabel('SRRC Pulse');
title('K=0')
figure(2)
plot(t1, f1, 'red')
hold on
plot(t2, f2, 'black')
hold on
plot(t3, f3, 'green')
hold on
plot(t1-(k(2)*T), f1, 'red')
hold on
plot(t2-(k(2)*T), f2, 'black')
hold on
plot(t3-(k(2)*T), f3, 'green')
grid on
legend('a = 0', 'a = 0.5','a = 1');
xlabel('Time(s)');
ylabel('SRRC Pulse');
title(' K=1')
figure(3)
plot(t1, f1, 'red')
hold on
plot(t2, f2, 'black')
hold on
plot(t3, f3, 'green')
hold on
plot(t1-(k(3)*T), f1, 'red')
hold on
plot(t2-(k(3)*T), f2, 'black')
hold on
plot(t3-(k(3)*T), f3, 'green')
grid on
legend('a = 0', 'a = 0.5','a = 1');
xlabel('Time(s)');
ylabel('SRRC Pulse');
title(' K=2')
figure(4)
plot(t1, f1, 'red')
hold on
plot(t2, f2, 'black')
hold on
plot(t3, f3, 'green')
hold on
plot(t1-(k(4)*T), f1, 'red')
hold on
plot(t2-(k(4)*T), f2, 'black')
hold on
plot(t3-(k(4)*T), f3, 'green')
grid on
legend('a = 0', 'a = 0.5','a = 1');
xlabel('Time(s)');
ylabel('SRRC Pulse');
title(' K=3')
