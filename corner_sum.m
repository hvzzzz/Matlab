function xyz= corner_sum(M)
[h ,v]=size(M);
xyz=M(1,1)+M(h,1)+M(1,v)+M(h,v);
end 