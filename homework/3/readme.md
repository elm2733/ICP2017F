## This is hw #3  

1. Gaussianpdf output:  

```  
>> gaussianpdf(1,0,2)  

ans =  

    0.1760  
```  

Verification from Matlab's built-in normpdf function:  

```  
>> normpdf(1,0,2)  

ans =  

    0.1760  
```  


2. Egg problem output:  

For To = 4:  
```  
>> egg(4)  

ans =  

  396.5763  
```  

For To = 20:  
```  
>> egg(20)  

ans =  

  315.2179  
```  


3. Polar to Cartesian output:  
```  
>> getCart  
Enter an r value: 3  
Enter a phi value: 45  
    x: 2.1213  
    y: 2.1213  


ans =  

  struct with fields:  

    x: 2.1213  
    y: 2.1213  
```  
Cartesian to Polar output:  
```  
>> getPolar  
Enter an x coordinate: 3  
Enter a y coordinate: 2  
      r: 3.6056  
    phi: 33.6901  


ans =  

  struct with fields:  

      r: 3.6056  
    phi: 33.6901  
```  


4. Size of a directory (bytes)  
```  
>> sizeofdir(s)  
        2665  


ans =  

        2665  
```  


5. Fibonacci Sequence  
Output for f(6):  
```  
>> fibonacci  
Please enter a non-negative integer or type stop! 6  
fib(6) = 8  
```  
Error output: 
```  
>> fibonacci  
Please enter a non-negative integer or type stop! -2  
The input argument is not a non-negative integer!  
```  


6. Triangle Area using a struct  
Output:  
```  
>> getTriangleArea
x1=4  
y1=3  
x2=2  
y2=1  
x3=5  
y3=7  
     3  


ans =  

     3  
```  


7. Prime number program  
Output for 71:    
```  
>> isPrime(71)  

ans =  

  logical  

   1  
```  
Output for 72:  
```  
>> isPrime(72)  

ans =  

  logical  

   0  
```  


8. Quadratic genFunc() and evalFunc()  

Test:  
```  
>> h1 = @genFunc  

h1 =  

  function_handle with value:  

    @genFunc  

>> h1(1,2,0)  
Enter an x-value to plug in: 2  
     8  


ans =  

     8  

>> h2 = @genFunc  

h2 =  

  function_handle with value:  

    @genFunc  

>> h2(1,2)  
Enter an x-value to plug in: 2  
     8  


ans =  

     8  
```  
The outputs are indeed the same.  



