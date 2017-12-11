function totalLogProb = getTotalLogProb(Param)
    global data nsample
    logProb = zeros(nsample,1);
    for isample = 1:nsample
        logProb(isample) = log(normpdf(data(isample),Param(1),Param(2)));
    end
    totalLogProb = -sum(logProb);
end
        