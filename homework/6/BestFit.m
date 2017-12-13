function BestFit()
    parameters = fminsearch(@getLogProbNorm,[1,10]);
    disp(['Mu:', num2str(parameters(1))]);
    disp(['Sigma:', num2str(parameters(2))]);
end