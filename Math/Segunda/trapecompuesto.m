function Resp=trapecompuesto(f,a,b,n)
h=(b-a)/n;
extr= feval(f,a)+ feval(f,b);
sumxi=0;
xi=a+h;
while xi<b
    sumxi=sumxi+feval(f,xi);
    xi=xi+h;
end
Resp=(extr+2*sumxi)*h/2;
