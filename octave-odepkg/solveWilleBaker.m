% http://octave.sourceforge.net/odepkg/function/ode23d.html

% deval(sol,5)
% symbolic solution is [767/40, ...
%   1372977775497546065372181595185280327502633/7782324618427734375000000000000000000000,   ...
%   2118288127243946981292253783821715691529048793/11128724204351660156250000000000000000000000] 
% i.e. [ 19.1750, 176.4226 190.3442] 
% 

% ode23d erratic?  45d 54d 78d are mostly ok

% pkg load odepkg
% sol = ode54d(@solveWilleBaker,[0 5],[1 1 1],[1,0.2],ones(3,2));
%                               ^slot
%                                     ^init
%                                             ^lags
%                                                     ^hist (??)
% plot(sol.x,sol.y)
% sol.y(end,:)
%        19.201   175.854   189.782


function dydt = solveWilleBaker(t,y,Z)
	ylag1 = Z(:,1);
	ylag2 = Z(:,2);
	dydt = [ylag1(1); ylag1(1)+ylag2(2); y(2)];
end


