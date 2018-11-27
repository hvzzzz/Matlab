function [c ,b ,a]=sort3(v) 
[row,col]=size(v);
if(row==1 && col==3)
    if v(1,1)>v(1,2)
        a=v(1,1);
        b=v(1,2);
        c=v(1,3);
    else
        a=v(1,2);
        b=v(1,1);
        c=v(1,3);
    end 
    if a<v(1,3)
        aux=a;
        a=v(1,3);
        c=aux;
    end
    if b<c
        aux1=b;
        b=c;
        c=aux1;
    end
else
     if v(1,1)>v(2,1)
        a=v(1,1);
        b=v(2,1);
        c=v(3,1);
    else
        a=v(2,1);
        b=v(1,1);
        c=v(3,1);
    end 
    if a<v(3,1)
        aux=a;
        a=v(3,1);
        c=aux;
    end
    if b<c
        aux1=b;
        b=c;
        c=aux1;
    end
end