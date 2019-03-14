function [front,back,central]=forbackcen(x0,h,f)
    front=vpa((subs(f,x0+h)-subs(f,x0))/h);
    back=vpa((-subs(f,x0-h)+subs(f,x0))/h);
    central=vpa((subs(f,x0+h)-subs(f,x0-h))/(2*h));
end
