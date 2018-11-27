function mdb= spherical_mirror_aberr(fn,D)
x=1:0.01:D/2;
[row column]=size(x);
%r=x/(2*fn*D);
theta=asin(x/(2*fn*D));
d=2*fn*D*tan(2*theta).*((ones(1,column)./(cos(theta)))-1);
mdb=((8*0.01)/(D^2))*sum(x.*d);
end