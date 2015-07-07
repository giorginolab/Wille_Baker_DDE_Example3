p=struct;
p.name={'tau1','tau2'};
p.value=[1,.2];

f=struct;
f.name={'f1','f2','f3'};
f.time=linspace(0,5,100);

res = simulx( 'model','dde2.txt', 'parameter',p, 'output',f);

% plotmlx documented in https://team.inria.fr/popix/files/2014/08/Mlxm112.pdf
opts.output={{'f1','f2','f3'}};  % bc. potentially >1 panel
plotmlx(res,'option',opts);

% Wasting one's short life reshaping between cells and matrices to make
% mathworks rich
% plot(f.time,cell2mat([res{1}.value; res{2}.value; res{3}.value]));

