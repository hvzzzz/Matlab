%SIMPSON 1/3
function Resp=simpson1tercio(f,a,b,n)
h=(b-a)/n;
m=a+h/2;
extr= feval(f,a)+ feval(f,b);
sumxi=0;
xi=a+h;
while xi<b
    sumxi=sumxi+feval(f,xi);
    xi=xi+h;
end
summi=0;
mi=m;
while mi<b
    summi=summi+feval(f,mi);
    mi=mi+h;
end
Resp=(b-a)*(extr+4*summi+2*sumxi)/(6*n);


