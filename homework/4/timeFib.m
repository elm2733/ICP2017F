%8. timeFib

function output = timeFib(n)
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
        if n_int == 0
            fib = 0;
        elseif n_int == 1
            fib = 1;
        else
            fib = getFib(n_int-1) + getFib(n_int-2);
        end
    end
end