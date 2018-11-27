%calculo de raices por metodo de biseccion
function v=biseccion(f,a,b,tol,n)
f=inline(f );
v=[]
c=(a+b)/2;
i=0;
v=[v; i a b c f(c)];
while (i<n & abs(a-b)>tol)
    if f(a)*f(c)<0
        i=i+1;
        b=c;
    else 
        if f(c)*f(b)<0
        i=i+1;
        a=c;
        else
            i=n;
        end
    end
    if i<n
        c=(a+b)/2;
        v=[v; i a b c f(c)];
    end
end
    if (i==n)
        fprintf('El metodo fracasa despues de %3.0f iteraciones',i)
    else
        fprintf('El metodo tubo exito despues de %3.0f iteraciones',i)
        fprintf('\n')
        fprintf('Resultados obtenidos')
        fprintf('\n')
        fprintf('i a_i b_i c_i f(c_i)/n ')
    end