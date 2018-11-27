function [out1 out2]= sindeg(deg)
out1=[(pi/180)*deg(1:end,1:end)];
out1=sin(out1(1:end,1:end));
out2=sum(out1(1:end,1:end));
out2=sum(out2(1:end,1:end));
[a,b]=size(deg);
out2=out2/(a*b);
end