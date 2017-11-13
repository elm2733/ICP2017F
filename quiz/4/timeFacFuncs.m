function timeFacFuncs
    g = @() getFacWhile(n);
    f = @() getFacFor(n);
    h = @() getFacVec(b);
    
    disp('average runtime for getFacWhile: ' ,timeit(g));
    disp('average runtime for getFacFor: ' ,timeit(f));
    disp('average runtime for getFacVec: ' ,timeit(h));