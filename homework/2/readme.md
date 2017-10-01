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



