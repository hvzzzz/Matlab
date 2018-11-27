function resp=top_right(N,n)
[a b]=size(N);
row=1:1:n;
column=b:-1:b-(n-1);
aux=column(end:-1:1); 
resp=[N(row,aux)];
end