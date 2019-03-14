function [diff_coefficient,val]=NewtonInterpolation(x,y,eval)
   if ((size(x,2)-size(y,2)~=0) || (size(x,1)~=1) || (size(y,1)~=1))
       error('x and y must both be 1-D vector with the same dimension.')
   end
   n=length(x);
   % for the final polynomial function. So let's reform y this way:
   y=transpose(y);
   y(n,n)=0;
   % this loop complete y as difference coefficient triangle
   for column=2:n
       for row=column:n
           y(row,column)=(y(row,column-1)-y(row-1,column-1))/(x(row)-x(row-column+1));
       end
   end
   % extracting coefficient from y to diff_coefficient
   diff_coefficient(n)=0;
   for row=1:n
       diff_coefficient(row)=y(row,row);
   end
   %from this part:"evaluation"
    if(nargin==3)
        val=diff_coefficient(1);
        for i=2:length(diff_coefficient)
            temp=diff_coefficient(i);
            for j=1:i-1
                temp=temp*(eval-x(j));
            end
            val=val+temp;
        end
    end
end