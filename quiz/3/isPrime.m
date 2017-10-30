function outLogical = isPrime(n)
    outLogical = true;
    divisor = 2;
    sqrt_n = round(sqrt(n));
    function isDivisible(n,divisor)
        if mod(n,divisor) == 0
            outLogical = false;
        elseif sqrt_n<divisor
            return
        else
            divisor = divisor + 1;
            isDivisible(n,divisor);
        end
    end
end