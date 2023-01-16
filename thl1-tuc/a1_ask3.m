clear all;
N=100;
A=1;
bit_seq=(sign(randn(N,3))+1)/2;
X_in=bits_to_PSK_8(bit_seq,A);

