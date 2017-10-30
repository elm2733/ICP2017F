%10 Quadratic Function

function y = genFunc(varargin)
    switch nargin
        case 0
            a = 0;
            b = 0;
            c = 0;
        case 1
            a = varargin{1};
            b = 0;
            c = 0;
        case 2
            a = varargin{1};
            b = varargin{2};
            c = 0;
        case 3
            a = varargin{1};
            b = varargin{2};
            c = varargin{3};
        otherwise
            disp('Error');
    end
    
    function y = evalFunc()
        x = input('Enter an x-value to plug in: ');
        y = a*x^2 + b*x + c;
    end

    y = evalFunc();
    disp(y)
end