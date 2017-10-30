%5. Fibonacci 

function [] = fibonacci()
    n = input('Please enter a non-negative integer or type stop! ');
    if n < 0
        disp('The input argument is not a non-negative integer!');
    else
        fprintf("fib(%d) =" ,n);
        disp(fib(n));
    end
    
    function [ result ] = fib(n)
        if (n==0 || n==1)
            result = n;
        else
            result = fib(n-2)+fib(n-1);
        end
    end 
end
    