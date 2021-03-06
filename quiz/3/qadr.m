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
    

