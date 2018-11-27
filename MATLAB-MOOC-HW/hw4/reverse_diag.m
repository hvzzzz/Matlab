function diag=reverse_diag(index)
    diag=zeros(index);
    diag(1:index-1:end)=1;
    diag(1,1)=0;diag(end,end)=0;
end