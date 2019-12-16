t=-2:0.001:2;
a0=1.5;
f=0;
for n=1:2:100
    f=f+(-2/(pi.*n)).*sin(n*pi.*t/2);
end

for i=1:10
    i
end    