t=-10:0.001:10;
a0=1.5;
f=0;
for n=1:1000
    f=f+(1/(n*pi))*(4*cos(n*pi/2)-cos(n*pi)-3)*sin((n*pi/2).*t);
end
% numbers=1:1000;
% for n=1:2:100
%     f=f+(-2/(pi*n))*sin((n*pi/2).*t);
% end
% for n=2:2:1000
%     if n~=4 & n~=8 & n~=16 & n~=32 & n~=64 & n~=128 & n~=256 & n~=512 
%         n
%         f=f+(-8/(pi*n))*sin((n*pi/2).*t);
%     end
% end
f=f+a0;
plot(t,f)
grid on
axis()