[coef inter]=NewtonInterpolation([0.2 0.5 0.1 0.7 0.9],[1.394 1.0025 1.1221 1.0084 1.1889],1.0027)
[delante atras central]=forbackcen(1,0.1,@(x) tan(x))
trapecompuesto(@(x) cos(x)/(x+1),0,6,10)
simpson1tercio(@(x) cos(x)/(x+1),0,6,10)
simpson3octavos(@(x) cos(x)/(x+1),0,6,10)
%%grafical 
%my_eulers(@(x,y) 9.8-0.2*y,0,0,.1,.2)
%modeuler(@(x,y) 2*x*y,0,0,0.1,.3)