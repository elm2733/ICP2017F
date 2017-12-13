function logProbNorm2 = getLogProbNorm(arg)
    load('Drand.mat');
    DrandData=Drand;
    logProbNorm2 = sum(-log(normpdf(DrandData,arg(1),arg(2))));
end