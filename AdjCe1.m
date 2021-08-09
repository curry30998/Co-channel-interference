function [Ce1Loc] = AdjCe1(N)
[ii,jj] = ClusterN(N)
Ce1Loc = zeros (18, 1) + j*zeros (18, 1) ;
Ce1Loc (1) = sqrt (3) * ( ii *exp (j*pi/6) + jj*exp (j *pi/6+ j*pi/3)) ;
for k=2:6
    Ce1Loc(k) = Ce1Loc(k- 1) *(0.5+sqrt(3)/2*j);
end ;
for i = 1:6
    Ce1Loc(2*i+5) = Ce1Loc(i) + Ce1Loc (i) ;
    Ce1Loc(2*i+6) = Ce1Loc(i) + Ce1Loc(i+1);
end;
    Ce1Loc (18) = Ce1Loc(6) + Ce1Loc(1);