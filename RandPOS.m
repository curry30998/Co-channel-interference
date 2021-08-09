%*******************************************************************
% This function is to get the randomly laction of the MS wi th m times.
% z i s a m*l matrix wi t h coodinate value x,y
%*******************************************************************
function [z] = RandPOS(m)
%******** get random value of x, y within a square*****%
x = 1.5 * rand(m,1)-1;
y = sqrt(3) *rand (m, 1) - 0.5*sqrt (3);
%******** use for loop to cut the square into a hexagon *****%
for k=1:m
    if x(k)>-1 && x(k)<-0.5 && y(k)>(1+x(k))*sqrt(3)
        x(k)=x(k)+1.5;
        y(k)=y(k)-sqrt(3) / 2;
    elseif x(k)>-1 && x(k)<-0.5 && y(k)<-(1+x(k))*sqrt(3)
        x(k) =x(k) + 1.5;
        y(k) =y(k) +sqrt (3) / 2;
    end
%******** if the MS i s too nea rly to the base station ******%
    if sqrt (x (k)^2+y (k)^2) <0.1
        x(k)=0.1;
        y(k)=0;
    end
end
z=x+j*y;