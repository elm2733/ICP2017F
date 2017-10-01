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
Not sure rn.  

```  
>> int8(1/3)  

ans =  

  int8  

   0  
```  
Not sure rn.  

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





