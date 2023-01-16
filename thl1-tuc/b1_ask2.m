clear all;
close all;
SNR_db = [-2:2:16];
Samples = 200;
N=100;
A=1;
Nf = 2048;
T = 0.001;
over = 10;
Ts = T/over;
a = 0.5;
F0=2000;
Fs = 1/Ts;
Symbol_err = zeros(1, length(SNR_db)); %Symbol Error Probability
Bit_err= zeros(1, length(SNR_db)); %Bit Error Probability
for k = 1:length(SNR_db)
number_of_symbol_errors = 0;
number_of_bit_errors = 0;
for l = 1:Samples
  bit_seq=(sign(randn(N,3))+1)/2;
  X_in=bits_to_PSK_8(bit_seq,A);
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
 
XI_t = Xiconv.*(2*cos(2*pi*F0*timeconv));
XQ_t = Xqconv.*(-2*sin(2*pi*F0*timeconv));
channel_in=XI_t+XQ_t;
varW = 1/(Ts*10^(SNR_db(k)/10));
varN = Ts*varW/2;

WGN = sqrt(varN).*randn(1, length(channel_in));
channel_in=channel_in';
X_noise = channel_in + WGN;
timeconv=timeconv';
XnoiseI=X_noise.*cos(2*pi*F0*timeconv);
XnoiseQ=X_noise.*(-sin(2*pi*F0*timeconv));
sigWI =Ts*conv(XnoiseI,f1);
sigWQ = Ts*conv(XnoiseQ,f1);
Nseq=3*N;
Yisamples=sigWI(2*A*over+1:over:2*A*over+Nseq/3*over);
Yqsamples=sigWQ(2*A*over+1:over:2*A*over+Nseq/3*over);
Y_out(1:N_bits) = Yisamples(1:N_bits);
Y_out(N_bits+1:2*N_bits) = Yqsamples(1:N_bits);
[est_X,est_bit_seq ]= detect_PSK_8(Y_out);
Xin(1:N_bits) = X_in(1:N_bits,1);
Xin(N_bits+1:2*N_bits) = X_in(1:N_bits,2);
number_of_symbol_errors = number_of_symbol_errors + symbol_errors(est_X, Xin);
%Detect 8-PSK

number_of_bit_errors = number_of_bit_errors + bit_errors(est_bit_seq, bit_seq);


end
Symbol_err(1, k) = number_of_symbol_errors/((length(bit_seq))*Samples);
Bit_err(1, k) = number_of_bit_errors/(length(bit_seq)*Samples);
s_bound(k) = 2*Q((1/sqrt(varN))*sin(pi/8));
b_bound(k) = s_bound(k)/3; 
end
figure
semilogy(SNR_db,Symbol_err, 'DisplayName', 'Experimental SER')
title('SER Monte Carlo method');
xlabel('SNR in db')
hold on
semilogy(SNR_db,s_bound,'DisplayName', 'Theoritical SER')
legend('show');
figure
semilogy(SNR_db,Bit_err, 'DisplayName', 'Experimental ÂER')
title('ÂER Monte Carlo method');
xlabel('SNR in db')
hold on
semilogy(SNR_db,b_bound,'DisplayName', 'Theoritical ÂER')
legend('show');