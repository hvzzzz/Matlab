%SIMPSON 3/8
function Resp=simpson3octavos(f,a,b,n)
h=(b-a)/n;
extr= feval(f,a)+ feval(f,b);
sumxi=0;
xi=a+h;
while xi<b
    sumxi=sumxi+feval(f,xi);
    xi=xi+h;
end
sumyizi=0;
yi=a+h/3;
zi=a+2*h/3;
while yi<b
    sumyizi=sumyizi+feval(f,yi)+feval(f,zi);
    zi=zi+h;
    yi=yi+h;
end
Resp=(b-a)*(extr+3*sumyizi+2*sumxi)/(8*n);

