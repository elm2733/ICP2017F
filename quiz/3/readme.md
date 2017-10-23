##This is quiz #3  

(1) The * means matrix multiplication so MATLAB will perform the normal operation as usual. However, the .* means element-wise  multiplication so MATLAB will perform multiplication of the corresponding cells of the two matrices.  
Code:  
```  
>> A = [2,3;4,5]  

A =  

     2     3  
     4     5  

>> B = [1,2;3,4]  

B =  

     1     2  
     3     4   

>> A * B  

ans =  

    11    16  
    19    28  

>> A .* B  

ans =  

     2     6  
    12    20  
```  

(2) If you have two vectors of the same size and want their dot product you could do A .* B, and add the results together. For example:  
```  
>> A = [1,0,3]  

A =  

     1     0     3  

>> B = [2,3,7]  

B =  

     2     3     7  

>> A .* B   

ans =  

     2     0    21  
```  

(3) The reason that you cannot use == to on strings is that MATLAB gives a runtime error when trying to compare strings of different lengths. 
Code:  
```  
function testString()  
    if (strcmp('ethan','MATLAB'))  
        disp('1');  
    else  
        disp('0');  
    end  
end  
```  
Output:  
```  
>> testString  
0  
```  

(4) || is about code efficiency, and | has to do if we are operating on a vector. || improves code efficiency since it is an operator that can be read as the word 'or' and checks both.

(5) What could be done is an if statement before x is defined, seeing if a/b is equal to Inf, and if so you could have your function automatically return 0.  

(6) I think the structure of arrays would be the most efficient way to calculate averages of students, for it seems more organized and overall more efficient since everything is stored together.  


(7) Function:  
```  
function qadr(a,b,c)  
   %equation is ax^2 + bx + c = 0  
   if b^2 - 4*a*c > 0  
       r1 = ((-b+sqrt(b^2 - 4*a*c)) / 2*a);  
       r2 = ((-b-sqrt(b^2 - 4*a*c)) / 2*a);  
       fprintf('root 1 is equal to %d and root 2 is equal to %d.\n',r1,r2);  
   elseif b^2 - 4*a*c == 0  
       r = -b / 2*a;  
       fprintf('root is equal to %d.\n',r);  
   else  
       disp('No real solution');  
   end  
       
end  
```  
Output:  
```  
>> qadr(1,5,6)  
root 1 is equal to -2 and root 2 is equal to -3.  
```  

(8) Anonymous Func:  
```  
>> g = @(c) integral(@(x)(x.^2+c*x+1),0,1)  

g =  

  function_handle with value:  

    @(c)integral(@(x)(x.^2+c*x+1),0,1)  

>> g(10)  

ans =  

    6.3333  

>> g(2)  

ans =  

    2.3333  
```  

(9)  Function:  
```  
function value = get_factorial(n)  
    if n <= 0  
       value = 1;  
    else  
       value = n*get_factorial(n-1);  
    end  
end  
```  
Output:  
```  
>> get_factorial(5)  

ans =  

   120  
```  
