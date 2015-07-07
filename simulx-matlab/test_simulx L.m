p=struct;
p.name={'tau1','tau2'};
p.value=[1,.2];

f=struct;
f.name={'f1','f2','f3'};
f.time=linspace(0,5,100);
% f.time=linspace(0,5,10);

res = simulx( 'model','dde2.txt', 'parameter',p, 'output',f);

opts.output={{'f1','f2','f3'}};
plotmlx(res,'option',opts);

% plot(f.time,cell2mat([res{1}.value; res{2}.value; res{3}.value]));

