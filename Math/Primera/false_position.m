function [p ,erros] = false_position(f,a,b,limerror)
if f(a)*f(b)>0 
    disp('Ninguna raiz se encuentra en este intervalo')
elseif f(a)*f(b)==0
    if f(a)==0
       p=a;
    else
       p=b;
    end
    return;
else    
    p = a-(f(a)*(b-a))/(f(b)-f(a));%root
    erros=(abs(p-a)/abs(p));
    while erros > limerror
        if f(a)*f(p)<0 
            b = p;
        else
            a = p;          
        end
        p = a-(f(a)*(b-a))/(f(b)-f(a));
        erros=(abs(p-a)/abs(p));
    end
    
end