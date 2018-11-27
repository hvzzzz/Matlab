function p=poly_val(c0,c,x)
[row,column]=size(c);
if size(c)==0
    p=c0;
elseif column==1 && row==1
    p=c0+c*x;
elseif column>1 && row==1
    p=c0+sum(c.*(x*ones(1,column)).^(1:column));
elseif column==1 && row>1
    p=c0+sum(c.*(x*ones(row,1)).^transpose(1:row));
end
end