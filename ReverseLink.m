clear all 
close all
N = input ( ' the cluster size N = ' );
n = input ( ' the path loss exponent n = ' );
M = 100000;
MSPos = RandPOS (M) ;
Ce1Loc = AdjCe1 (N);
pos = ones(18, M);
for i =1 : 18
    pos ( i , :) =RandPOS (M) ;
end
IntMS = pos'+ ones(M, 1 )*Ce1Loc';
ds = (abs(MSPos)).^- n ;
ditemp = (abs (IntMS)).^ - n ;
di= ditemp*ones(18, 1 );
SIR = 10*log (ds./di );
hist (SIR, - 20 : 150)
title( ' pdf of SIR ' );
xlabel ( ' SIR (dB) ' );
ylabel ( ' pdf ' );