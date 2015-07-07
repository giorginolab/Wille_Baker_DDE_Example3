% http://www.mathworks.it/it/help/matlab/math/dde-with-constant-delays.html

% Run with: 
% tint = linspace(0,5,100);
% sol=solveWilleBaker
% Sint = deval(sol,tint);
% plot(tint,Sint);

% deval(sol,5)
% symbolic solution is [767/40, ...
%   1372977775497546065372181595185280327502633/7782324618427734375000000000000000000000,   ...
%   2118288127243946981292253783821715691529048793/11128724204351660156250000000000000000000000] 
% i.e. [ 19.1750, 176.4226 190.3442] 
% 

function sol=solveWilleBaker()

    lags = [1,0.2];
    sol = dde23(@ddex1de,lags,@ddex1hist,[0,5]);
    
%     tint = linspace(0,5,10);
%     Sint = deval(sol,tint)
%     hold on
%     plot(tint,Sint,'o');


    function dydt = ddex1de(t,y,Z)
      ylag1 = Z(:,1);
      ylag2 = Z(:,2);
      dydt = [ylag1(1); ylag1(1)+ylag2(2); y(2)];
    end

    function S = ddex1hist(t)
      S = ones(3,1);
    end

end