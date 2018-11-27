syms x;
f=log(x);
for i=1:20
    resp=taylor(f,'ExpansionPoint', 1, 'Order', i);
    pause(0.0000000000000000000000000000001)
    resp=simplify(resp);
    fplot(resp,[-100 100])
    hold on;
    fplot(f,[-10 10])
    axis([-10 10 -4 4])
end 
pretty(resp)
%%
syms x;
f=cos(x);
for i=1:100
    resp=taylor(f,'ExpansionPoint', 0, 'Order', i);
    pause(0.0000000000000000000000000000001)
    resp=simplify(resp);
    fplot(resp,[-100 100])
    hold on;
    fplot(f,[-10 10])
    axis([-10 10 -4 4])
end 
pretty(resp)
%%
syms x;
f=sin(x);
for i=1:20
    resp=taylor(f,'ExpansionPoint', pi/6, 'Order', i);
    pause(0.0000000000000000000000000000001)
    resp=simplify(resp);
    fplot(resp,[-100 100])
    hold on;
    fplot(f,[-10 10])
    axis([-10 10 -4 4])
end 
pretty(resp)
%%
syms x;
f=atan(x);
for i=1:20
    resp=taylor(f,'ExpansionPoint', 1, 'Order', i);
    pause(0.0000000000000000000000000000001)
    resp=simplify(resp);
    fplot(resp,[-100 100])
    hold on;
    fplot(f,[-10 10])
    axis([-10 10 -4 4])
end 
pretty(resp)