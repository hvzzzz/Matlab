function s=peri_sum(m)
[a,b]=size(m);
col=m(2:1:a-1,1)+m(2:1:a-1,b);
row=m(1,1:1:b)+m(a,1:1:b);
s=sum(row)+sum(col);
end