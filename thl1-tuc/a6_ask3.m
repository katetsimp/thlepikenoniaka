
SNRdb = 10;
varW = 1/(Ts*10^(SNRdb/10));
varN = Ts*varW/2;


WGN = sqrt(varN).*randn(1, length(channel_in));
channel_in=channel_in';
X_noise = channel_in + WGN;