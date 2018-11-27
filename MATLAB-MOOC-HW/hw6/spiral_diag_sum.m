function resp=spiral_diag_sum(n)
resp=1;
val=1;
for j=2:2:n-1
    for i=1:4
        val=val+j;
        resp=resp+val;
    end
end
end