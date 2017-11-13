%7. (b) fibLoop
function fibLoop()

    n = input('Please enter a non-negative integer or type stop: ','s');
    if strcmp(n,'stop')
        return
    else
        n = str2double(n);
        if isreal(n)
            if n>=0 && round(n)==n
                disp([char(9),'fib(',num2str(n),') = ',num2str(getFib(n))]);
                g = @() getFib(n);
                disp(['average runtime: ' num2str(timeit(g))]);
                fibLoop()
                return
            end
        end
        disp('The input argument is not a non-negative integer!');
        fib()
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