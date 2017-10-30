%7. isPrime function using a flag and a for loop

function ispr = isPrime(n)
    ispr = true;
    
    for i = 2: n-1
        if rem(n,i) == 0
            ispr = false;
            break;
        end
    end
end
        