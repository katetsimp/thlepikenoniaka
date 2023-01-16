Y_out(:, 1) = Y_out_I(1:N_bits);
Y_out(:, 2) = Y_out_Q(1:N_bits);
[est_X, est_bit_seq] = detect_PSK_8 (Y_out, Amp);