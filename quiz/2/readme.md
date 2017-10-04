## This is quiz #2  

1.  (A) The closest programming language to machine code is assembly language.  
    (B) Yes, it does need interpretation.  
    
2.  (A) ForTran is the oldest high-level language that is still used today.  
    (B) + or - 15 years  
    
3.  (A) A second generation programming language would be C/C++.  
    (B) ForTran is first, C/C++ is second, and MATLAB is third.  

4.  C was created in the 80s, C++ was created in the 90s, and MATLAB was created in the 00's.  

5.  ForTran  

6.  C  

7.  C++  

8. Initialization of c:  
    ```  
    >> c = {' ' ' '; ' ' ' '}  

    c =  

    2×2 cell array  

        ' '    ' '  
        ' '    ' '  
     ``` 
    
```  
    >> c{1,2} = 'This is a text string'  

    c =  

      2×2 cell array  

        ' '    'This is a text string'  
        ' '    ' '                    

    >> c{1,1} = [1 3 -7;2 0 6;0 5 1]  

    c =  

      2×2 cell array  

        [3×3 double]    'This is a text string'  
        ' '             ' '                     

    >> c{2,1} = '[ ]'  

    c =  

      2×2 cell array  

        [3×3 double]    'This is a text string'  
        '[ ]'           ' '                      

    >> i = sqrt(-1)  %creating i

    i =  

       0.0000 + 1.0000i  

    >> c{2,2} = [3 + 4*i, -5; -10*i, 3 - 4*i]  

    c =  

      2×2 cell array  

        [3×3 double]    'This is a text string'  
        '[ ]'                      [2×2 double]  
        ```  
    
9.  From c{2}, I get '[ ]'. I get this because this is the first entry in row 2.  

```  
>> c{2}  

ans =  

    '[ ]'  
```  

10. MATLAB stores data row-wise, meaning that a vector is created on a line in MATLAB, and uses ';' to create rows.  

11. A MATLAB integer of type int64 is 8 bytes.  

12. If you tried to convert a huge integer to type int32 that needs int64, MATLAB would just print out the largest number type int32 can hold.  

