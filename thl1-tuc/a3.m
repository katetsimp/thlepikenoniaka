c1=T/(1000);
c2=T/10.^5;
figure
semilogy(thz, abs(F1).^2, 'black');
hold on
semilogy(thz, abs(F2).^2, 'red');
hold on
semilogy(thz, abs(F3).^2, 'green');
hold on
semilogy(thz,c1, 'blue.');
hold on
semilogy(thz,c2, 'blue.');

grid on
legend('a = 0', 'a = 0.5', 'a = 1', 'c1=T/10^3','c2=T/10.^5')
xlabel('Frequency(Hz)');
ylabel('|F(F)|^2');
title('A3 : semilogy')
