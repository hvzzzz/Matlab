x = -100:.1:100;
 g = inline('x + 1');
 h = inline('x.^3');
 y1 = g(x);
 x1 = h(x);
 plot(x,g(x))
hold on
%plot(x,h(x))