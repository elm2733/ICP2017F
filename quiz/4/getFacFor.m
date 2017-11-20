%(B) getFacFor

function getFacFor(n)
    f=1;
    for i=2:n
        f=f*i;
        fprintf('Factorial is: %d',f);
    end
end
  