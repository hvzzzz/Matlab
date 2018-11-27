function x= longitud(A,B,C,alpha)
if A==0
    x=0;
else    
syms a;
a= sqrt(A^2+diff(A)^2);
x= vpa(int(a,alpha,B,C));
%print x;
end
end
