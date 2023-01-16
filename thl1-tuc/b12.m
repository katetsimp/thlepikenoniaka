A=5;
k=0:2*A;
figure
f1=givetherightlength(k(1),f1,T,Ts);
f2=givetherightlength(k(1),f2,T,Ts);
f3=givetherightlength(k(1),f3,T,Ts);
p1a = givetherightlength(k(2),f1,T,Ts);
p2a =  givetherightlength(k(2),f2,T,Ts);
p3a =  givetherightlength(k(2),f3,T,Ts);
p1b =  givetherightlength(k(3),f1,T,Ts);
p2b =  givetherightlength(k(3),f2,T,Ts);
p3b =  givetherightlength(k(3),f3,T,Ts);
p1c =  givetherightlength(k(4),f1,T,Ts);
p2c =  givetherightlength(k(4),f2,T,Ts);
p3c =  givetherightlength(k(4),f3,T,Ts);
figure(1)
plot(t2,f1.*f1,'red')
hold on
plot(t2,f2.*f2,'black')
hold on
plot(t3,f3.*f3,'green')
hold on
grid on
legend('a = 0', 'a = 0.5','a = 1');
xlabel('Time(s)');
ylabel('Ginomeno');
title(' K=0')
figure(2)

plot(t1,f1.*p1a,'red')
hold on
plot(t1,f2.*p2a,'black')
hold on
plot(t1,f3.*p3a,'green')
hold on
grid on
legend('a = 0', 'a = 0.5','a = 1');
xlabel('Time(s)');
ylabel('Ginomeno');
title(' K=1')
figure(3)
plot(t1,f1.*p1b,'red')
hold on
plot(t1,f2.*p2b,'black')
hold on
plot(t1,f3.*p3b,'green')
hold on
grid on
legend('a = 0', 'a = 0.5','a = 1');
xlabel('Time(s)');
ylabel('Ginomeno');
title(' K=2')
figure(4)
plot(t1,f1.*p1c,'red')
hold on
plot(t1,f2.*p2c,'black')
hold on
plot(t1,f3.*p3c,'green')
hold on
grid on
legend('a = 0', 'a = 0.5','a = 1');
xlabel('Time(s)');
ylabel('Ginomeno');
title(' K=3')
