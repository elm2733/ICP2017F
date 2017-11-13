## This is hw #4  

1. convertTemp  
(A) convertTempFor  
Ouput with C2F = string:    
```  
>> InVec = [-20, -15, -10, -5, 0, 5, 10, 15, 20, 25, 30, 35, 40];  
>> convertTempFor(InVec,'C2F')  

ans =  

    -4     5    14    23    32    41    50    59    68    77    86    95   104  
```  

(B) convertTempWhile  
```  
>> convertTempWhile(InVec,'C2F')  

ans =  

    -4     5    14    23    32    41    50    59    68    77    86    95   104  
```  

(C) convertTempVec   
```  
 >> convertTempVec(InVec,'C2F')  

ans =  

    -4     5    14    23    32    41    50    59    68    77    86    95   104  
```  


2.  timeit()  
(A)  convertTempFor  
```  
>> tic, convertTempFor(InVec,'C2F'),toc  

ans =  

    -4     5    14    23    32    41    50    59    68    77    86    95   104  

Elapsed time is 0.003050 seconds.  
```  
(B) convertTempWhile  
```  
>> tic, convertTempWhile(InVec,'C2F'), toc  

ans =  

    -4     5    14    23    32    41    50    59    68    77    86    95   104  

Elapsed time is 0.007206 seconds.   
```  
(C) convertTempVec  
```  
>> tic, convertTempVec(InVec,'C2F'), toc  

ans =  

    -4     5    14    23    32    41    50    59    68    77    86    95   104  

Elapsed time is 0.000972 seconds.  
```  

As one might guess, convertTempVec performs the best out of all the functions, taking a significant less amount of time for the code to execute. This code is also more readable, and a bit more organized than the other two functions.  

3. extractLetter  
Output:  
```  
>> extractLetter  
MATLAB is a strange, but popular programming language  
```  

4. This code starts off with the number 2.0, square roots it, then squares it. It does each of these operations whatever amount n is equal to. So, if n was 3 for example, it would square root 2.0 three times, square that result three times, then print the final answer. The reason this code never gets back to 2.0 is simply because of roundoff error. Once each operation is done 60 times, and the result is displayed, it is a whole different number. A reason the roundoff error could be so prominent is that the square root of 2.0 is not a rational number.  

5. This code is setting a value (epsilon), and basically dividing the previous value of it by two for every iteration of the while loop.  A way that eps could be equal to eps + 1.0 is that the previous value of eps was so small that MATLAB possibly rounded it to zero. This could make sense, because the code stopped when eps equaled 1.1102e-16 which is a rather small number.  

6. getLargestPrime  
Output:  
```  
>> getLargestPrime(91)  
    89  
```  

7.  Fibonacci  
(A) fib  
Output:  
```  
>> fib  
Please enter a non-negative integer or type stop: 10  
	fib(10) = 55  
average runtime: 2.5976e-05  
Please enter a non-negative integer or type stop: 15  
	fib(15) = 610  
average runtime: 0.0001377  
Please enter a non-negative integer or type stop: 20  
	fib(20) = 6765  
average runtime: 0.00083753  
Please enter a non-negative integer or type stop: 25  
	fib(25) = 75025  
average runtime: 0.016442  
Please enter a non-negative integer or type stop: 30  
	fib(30) = 832040  
average runtime: 0.12074  
Please enter a non-negative integer or type stop: 35  
	fib(35) = 9227465  
average runtime: 1.0741  
Please enter a non-negative integer or type stop: stop  
```    
(C) fibLoop  
Output:  
```  
>> fibLoop  
Please enter a non-negative integer or type stop: 10  
	fib(10) = 55  
average runtime: 3.2363e-06  
Please enter a non-negative integer or type stop: 15  
	fib(15) = 610  
average runtime: 3.2617e-06  
Please enter a non-negative integer or type stop: 20  
	fib(20) = 6765  
average runtime: 1.7127e-06  
Please enter a non-negative integer or type stop: 25  
	fib(25) = 75025   
average runtime: 3.3697e-06  
Please enter a non-negative integer or type stop: 30  
	fib(30) = 832040  
average runtime: 2.5203e-06  
Please enter a non-negative integer or type stop: 35  
	fib(35) = 9227465  
average runtime: 3.4607e-06  
Please enter a non-negative integer or type stop: stop  
```  
As one might guess the fibLoop performs much faster than the recursive way of generating fibonacci numbers. Loops iterate much faster than recursive functions because they don't have to go in and pull each value one at a time from memory.  

8.  timing  
(A) timeFib  
Output:  
```  
>> timeFib(20)  

ans =  

  struct with fields:  

          n: 20  
        fib: 6765  
    runtime: 0.0017  

>> timeFib('ethan')  
The input argument is not a non-negative integer!  
```  
timeFibLoop  
Output:  
```  
>> timeFibLoop(20)  

ans =  

  struct with fields:  

          n: 20  
        fib: 6765  
    runtime: 3.5143e-06  

>> timeFibLoop('ethan')  
The input argument is not a non-negative integer!  
```  
(B) writeFibResult  
See text files.  
