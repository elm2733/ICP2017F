function logProbNorm2 = getLogProbNorm2(param)
    load('Drand.mat');
    data=Drand;
    logProbNorm2 = sum(-log(normpdf(data,param(1),param(2))));
end