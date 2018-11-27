function  amag = accelerate(F1,F2,m)
Tforce=F1(1:1:end)+F2(1:1:end);
amag=sqrt(Tforce(1,1)^2+Tforce(2,1)^2+Tforce(3,1)^2);
amag=amag/m;
end