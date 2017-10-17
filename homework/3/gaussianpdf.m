%1. Gaussian pdf
function f = gaussianpdf(x,mu,sigma)
    f = (1 / (sqrt((2*pi))*sigma)) * exp((-0.5) * ((x - mu)/sigma)^2);
end