%8. timeFibLoop

function output = timeFibLoop(n)
    if(~ischar(n) && isreal(n) && round(n) == n)
        output = struct;
        output.n = n;
        output.fib = getFib(n);
        g = @() getFib(n);
        output.runtime = (timeit(g));
    else
        disp('The input argument is not a non-negative integer!');
    end
    
     function fib = getFib(n_int)
        fibOld1 = 0;
        fibOld2 = 1;
        for i=2:n_int
            fib = fibOld1 + fibOld2;
            fibOld1 = fibOld2;
            fibOld2 = fib;
        end
     end
end