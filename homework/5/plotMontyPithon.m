function plotMontyPithon(n)

close all;
figure(); hold on; box on;

nums = rand(n,2); %creating an n x 2 matrix of random numbers between 0 and 1 using the rand function
c = zeros(n,2); %creating an n x 2 zero matrix
loc = 1;

for i = 1:n
    d = sqrt(nums(i,1)^2+nums(i,2)^2);
    
    if(d <= 1)
        c(loc,1) = nums(i,1);
        c(loc,2) = nums(i,2);
        loc = loc + 1;
    end
end

c = c(1:loc,1:2);

scatter(c(:,1),c(:,2));
title('Estimate of pi vs. Number of Points Simulated');
saveas(gcf,'piDataPlot.png');

end