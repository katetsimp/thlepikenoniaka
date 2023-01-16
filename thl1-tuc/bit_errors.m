function [num_of_bit_errors] = bit_errors(est_bit_seq, b)
take_seq = zeros(1, 3*length(est_bit_seq));
num_of_bit_errors=0;

n = 1;
for i=1:length(est_bit_seq)
take_seq(n) = est_bit_seq(i, 1);
take_seq(n+1) = est_bit_seq(i, 2);
take_seq(n+2) = est_bit_seq(i, 3);
n = n+3;
end
l=1;

for k = 1:length(est_bit_seq)/2
if(b(k,1) ~= take_seq(l))
num_of_bit_errors = num_of_bit_errors + 1;
elseif(b(k,2) ~= take_seq( l+1))
    num_of_bit_errors = num_of_bit_errors + 1;
elseif(b(k,3) ~= take_seq( l+2))
  num_of_bit_errors = num_of_bit_errors + 1;
    
end
l=l+3;
end
end