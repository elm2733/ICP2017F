function value = get_factorial(n)
    if n <= 0
       value = 1; 
    else
       value = n*get_factorial(n-1);
    end
end
      
        