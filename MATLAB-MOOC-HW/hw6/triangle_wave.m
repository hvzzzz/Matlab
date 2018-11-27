function func=triangle_wave(n)
syms t;
pieces=4*pi/1000;
func=0;
t=0:pieces:4*pi;
for i=0:n
    %fprintf('i=%d\n',i);
    func=func+(sin((2*i+1)*t)*(-1)^i)/(2*i+1)^2;
    %pretty(func);
end
end