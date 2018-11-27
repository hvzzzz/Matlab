function m = even_index(M)
[row,column]=size(M);
nrow=2:2:row;
ncolumn=2:2:column;
m=[M(nrow,ncolumn)];
end