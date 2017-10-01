## This is hw #2  

1. Type the following in the command window and submit the results. Briefly explain what each assignment does.  

```  
>> a = 1  

a =   

    1  
```   
This assigns the variable a to 1.  

```  
>> b = 'x'  

b =  

    'x'   
```   
This assigns the variable b to the char x.  

```    
>> c = true  

c =  

  logical  

   1  
```    
This assigns the variable c to true.  

```  
>> whos a b c  
  Name      Size            Bytes  Class      Attributes  

  a         1x1                 8  double                 
  b         1x1                 2  char                    
  c         1x1                 1  logical  
```  
whos lists in alphabetical order the names, sizes, and types of all variables in the currently active workspace.  

```  
>> a == c  

ans =  

  logical  

   1  
```  
This assignment returns 1 if a and c are equal, or 0 if they're not equal.  

```  
>> a + c  

ans =  

     2  
```  
This assignment adds the values of a and c.  

```  
>> d = [1 2 3 4]

d =  

     1     2     3     4  
```  
This assignment constructs a four-element vector with numerical values 1, 2, 3, and 4, and assigns it to the variable d.  

```  
>> e = ['a' 'b' 'c' 'd']  

e =  

    'abcd'  
```  
This assignment constructs a four-element vector with characters a, b, c, and d, and assigns it to the variable e.  

```  
>> f = ['abcd']  

f =  

    'abcd'  
```  
This assignment constructs a one-element vector with the string abcd, and assigns it to the variable f.  

```  
>> g = {'a' 'b' 'c' 'd'}  

g =  

  1×4 cell array  

    'a'    'b'    'c'    'd'  
```  
This assignment creates a 1x4 cell array full of chars, and assigns it to the variable g.  

```  
>> h = { a b c d}  

h =  

  1×4 cell array  

    [1]    'x'    [1]    [1×4 double]  
```  
This assignment creates a 1x4 cell array from the variables a, b, c, and d and lists the data type of each.  

```  
>> whos d e f g h  
  Name      Size            Bytes  Class     Attributes  

  d         1x4                32  double               
  e         1x4                 8  char                  
  f         1x4                 8  char                   
  g         1x4               456  cell                  
  h         1x4               491  cell  
```  
whos lists the names, sizes, and classes of the variables d, e, f, g, and h.  


2.  What would happen if you go beyond the range for a particular type? For example, the largest integer that can be stored in int8 is 127, and the smallest integer is -128, so what would happen if we type cast a larger integer to the type int8? Smaller integer? Use the built-in functions intwine and intmax to find the largest and smallest integers that can be stored in int16 and int32.  

Ans: If you were to type cast a larger integer for int8, it it will just print out the largest number that can be stored in that type, which is 2^7 - 1, or 127. If we were to type cast a smaller integer into int8, it would also just print out the smallest integer that can be stored, which is -2^7, or -128.

```  
>> int8(128)  

ans =  

  int8  

   127  

>> int8(-129)  

ans =  

  int8  

   -128  
   
```  
Max and min for the type int32:  
```  
>> intmax('int32')  

ans =  

  int32  

   2147483647  

>> intmin('int32')  

ans =  

  int32  

   -2147483648  
```  
Max and min for the type int64:  
```  
>> intmax('int64')  

ans =  

  int64  

   9223372036854775807  

>> intmin('int64')  

ans =  

  int64  

   -9223372036854775808  
```  

3.  Think about what the results would be for the following expressions, and then type them in to the terminal to verify your answers. Briefly explain the results for each one.  

```  
>> 1\2  

ans =  

     2  
```  
The special character \ does matrix left division, 2 divided by one is 2.  

```  
>> 1/2  

ans =  

    0.5000  
```  
The special character / does matrix right division, 1 divided by 2 is 0.5000.  

```  
>> int8(1/2)  

ans =  

  int8  

   1  
```  
1 divided by 2 is 0.5, so matlab rounds this up to 1.  

```  
>> int8(1/3)  

ans =  

  int8  

   0  
```  
1 divided by 3 is 0.333333 so matlab rounds this down to 0.  

```  
>> -5^2  

ans =  

   -25  
```  
This result makes sense because there are no parentheses around the -5, so matlab gives us -25.  

```  
>> (-5) ^ 2  

ans =  

    25  
```  
This result makes sense because there are parentheses around the -5, so matlab will spit out 25.  

```  
>> 10-6/2  

ans =  

     7  
```  
This result follows the order of operations, so matlab looks at 6/2, and then subtracts 3 from 10 to give 7.  

```  
>> 5*4/2*3  

ans =  

    30  
```  
This result follows the order of operations. Since multiplication and division are the same order, matlab does the operations from left to right to give 30.  


4.(a)  Define the following variables:   

```  
>> a  
>> a = [1 0; 2 1]  

a =  

     1     0  
     2     1  

>> b  
>> b = [-1 2; 0 1]  

b =  

    -1     2  
     0     1  

>> c  
>> c = [3;2]  

c =  

     3  
     2  
     
>> d  
>> d = 5  

d =  

     5  
```  
4.(b)  What is the result of each of the following expressions? Briefly explain what MATLAB is doing for each operation.  
1. a + b  
```  
>> a + b  

ans =  

     0     2  
     2     2  
```  
This result is adding the corresponding values of a and b added together, and matlab is doing matrix addition.  

2. a .* b  
```  
>> a .* b  

ans =  

    -1     0  
     0     1  
 ```  
 The .* operator means a times b, so matlab is taking the two matrices, and multiplying element by element.  
 
 3. a * b  
 ```  
 >> a * b  

ans =  

    -1     2  
    -2     5  
```  
The * operator means matrix multiplication, so matlab performs the first row times each column, and the same thing for the second row.  

4. a * c  
```  
>> a * c  

ans =  

     3  
     8  
```  
The * operator means matrix multiplication, so matlab performs the first row times the column, and the same thing for the second row.   

5. a + c  
```  
>> a + c  

ans =  

     4     3  
     4     3  
```  
The + operator means binary addition, so matlab adds 3 to each element in row 1 of a, and 2 to each element in row 2 of a.  

6. a + d  
```  
>> a + d  

ans =  

     6     5  
     7     6  
```  
The + operator means binary addition, so matlab adds 5 to each element of a.  

7. a .* d  
```  
>> a .* d  

ans =  

     5     0  
    10     5  
```  
 The .* operator means a times d, so matlab is multiplying each element in a by 5.  
 
 8. a * d  
 ```  
 >> a * d  

ans =  

     5     0  
    10     5  
```  
The * operator means matrix multiplication, but in this case it does the same thing as the .* operator since 5 is just a number being multiplied by a.  

5.  Provide three different methods of generating the matrix a, one method should use the diag() function, one should use the eye function, and one should use the zeros function.  

1. diag() function:  
```  
>> a = diag([2 2 2])  

a =  

     2     0     0  
     0     2     0  
     0     0     2  
```  
2. eye function:  
```  
>> a = 2 * eye(3)  

a =  

     2     0     0  
     0     2     0  
     0     0     2  
```  
3. zeros function:  
```  
b =  

     2     0     0  
     0     2     0  
     0     0     2  

>> a = zeros(3) + b  

a =  

     2     0     0  
     0     2     0  
     0     0     2  
```  

6.  Download this code. This code is full syntax errors. Fix the errors and submit the corrected code with name script_full_of_errors_fixed.m in your folder for this HW. Explain in front of each corrected MATLAB statement, why the error occurred. Modify the last two variables so that they display,  
```  
>> Persian  
Persian =  
Persian is a human language  
>> Spanish  
Spanish =   
    'Spanish '    'is '    ' another'    'language'  
```  

Modify the last line such that for the last line the code displays,  
```  
Persian is not the same as Spanish  
```  
Ans: See script_full_of_errorsfixed.m in homework/2.  
Output for both:  
```  
>> script_full_of_errorsfixed  
    3.1416  

  -2.6536e-06  

The year is 2017  
Persian is a human language  
    'Spanish '    'is '    ' another'    'language'  

Persian is not the same as Spanish  
```  
Explain these results.  

Before, there were not quotes around Persian and Spanish, so matlab was displaying what was inside of Persian and Spanish instead of the physical two words. Once quotes were put around them in the diplay statement, it displayed 'Persian is not the same as Spanish' correctly.  


7.  Use MATLAB help to find out how you can create a new directory named mynewdir from MATLAB command line. Then change the working directory the newly created directory. Then create a MATLAB script in this directory named myscript.m with the following code in it,  
```  
% First create an array from -2*pi to 2:pi  
x = -2*pi:pi/20:2*pi;  

% Calculate |sin(x)|  
y = abs(sin(x));  

plot(x,y);  
```  
Ans:  
```  
>> mkdir mynewdir  
>> cd mynewdir  
```  
Now on MATLAB command line, run the script by calling its name. What do you get? Save the output as a figure and submit it with your homework.  

Ans: See figure1.fig in homework/2.  It is a plot of x vs. y.  


8.  Now change your working directory to the original directory before you created mynewdir directory. Try to run the script myscript you had created again, from MATLAB command line. What do you get? and why?  
```  
cd ..  
```  

The file C:\...ICP2017F\homework\2\mynewdir\myscript.m is not found in the current folder or the current matlab path. This occurs because myscript.m is stored in the mynewdir folder. It is necessary to create a path for it if we want this code to run in our old directory.  

















