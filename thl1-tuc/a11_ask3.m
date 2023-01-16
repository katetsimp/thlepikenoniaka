Nseq=3*N;
Yisamples=sigWI(2*A*over+1:over:2*A*over+Nseq/3*over);
Yqsamples=sigWQ(2*A*over+1:over:2*A*over+Nseq/3*over);
figure
scatter(Yisamples,Yqsamples);
title('Symbols of X');
xlabel('t(s)');
ylabel('X(t)')