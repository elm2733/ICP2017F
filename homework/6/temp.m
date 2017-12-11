%(3)
load('Drand.mat')
global data
data = Drand;
mu = 1;
sigma = 10;
Param = [mu,sigma];
nsample = length(data);
getTotalLogProb(mu,sigma);
fminsearch(@getTotalLogProb,Param);