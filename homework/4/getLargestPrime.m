%6. get largest prime

function getLargestPrime(n)
    for i = n:-1:2
        if isprime(i)
            disp(i);
            break;
        end
    end
end