%*********************************************************
% Th is function is to find i &j correspond to a given N
% as N = i'2+j ¡¤ 2+ij
% ii and j j is the result of i,j
%********************************************************
function [ii, jj] = ClusterN(N)
% the largest number of i and j is sqrt(N)
for a = 0 : sqrt (N)
    for b = 0: sqrt (N)
        if a^2+b^2+a*b == N
            ii = a;
            jj = b;
        end;
    end;
end;