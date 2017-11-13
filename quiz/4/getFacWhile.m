%(A) getFacWhile

function getFacWhile(n)
    n1 = n;
    factorial = n;
    while n > 1
        n = n-1;
        factorial = factorial*n;
    end
    disp([num2str(n1),'! = ' num2str(factorial)])
end
  