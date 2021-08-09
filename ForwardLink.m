clear all
close all
N = input('the cluster size N =');
n = input('the path loss exponent n =');
M = 100000;

MSPos = RandPOS(M);
Ce1Loc = AdjCe1(N);
ds = (abs (MSPos)).^-n;
ditemp1 = abs (MSPos*(ones(18, 1))' - ones(M, 1)*Ce1Loc');
ditemp2 = ditemp1.^-n;
di = ditemp2*ones (18, 1) ;
SIR = 10*log(ds./di) ;
hist (SIR, [-20 : 250])
title('Histogram');
xlabel(' SIR (dB)') ;
ylabel(' numbers of MS') ;