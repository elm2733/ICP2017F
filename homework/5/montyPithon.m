function approximatePi = montyPithon(n)
count = 0;

    for i = 1:n
        xcoordinate = rand(1); %generating number between zero and one
        ycoordinate = rand(1);

        if ((xcoordinate^2 + ycoordinate^2) <= 1)
            count = count + 1;
        end
    end
    
    approximatePi = 4 * (count/n);
    
    disp(num2str(approximatePi));
    plot(n,approximatePi);
    figure();
end

