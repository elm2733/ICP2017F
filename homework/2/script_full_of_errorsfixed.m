a = 2; % deleted 1 in front of a since a variable can't start with a number
a1 = b;
x = 2;
y = x + 4; % is it 6? %yes, when 'x' is not 'X'
pi = 4 * atan(1);
disp(pi)
pi = 3.14159; % removed ' ' because the tan function takes a number
disp(tan(pi));
c = 4^3^2^3;
t = ((c-78564)/c + 32); % removed an extra parenthesis and made the expression equal to t
year = '2017'; % added ' ' around year
disp(['The year is ' year]); % does it display 2017 correctly? %after you add quotes around year, yes
stuff = {'a' 'b' 4 21 'c'};
beginning = stuff(1); % started stuff at 1 since it can't start from 0
stuff(5:end); % ended stuff at the 5th cell of the array, which is 'c'
discount = 12; % ;
AMOUNT = 120; % removed .- since this is not an arithmetic operator in matlab
amount = 120; % removed the dollar sign since it is an invalid character
and = 'duck'; % added ' ' to make duck an array of chars, or a string
class = 'INF1100, gr 2';
continue_ = x > 0;
fox = false; % deleted an equal sign to set fox equal to false or 0
wolf = fox == true;
Persian = ['Persian',' is ' 'a',' human ' 'language'];
Spanish = {'Spanish ' 'is ' ' another'  'language'};
disp(Persian); % displaying what is in the variable Persian
disp(Spanish); % displaying what is in the variable Spanish
disp('Persian is not the same as Spanish');  %Used the strings 'Persian' and 'Spanish' instead of the variables