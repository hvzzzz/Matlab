function indexes=small_elements(v)
[row,column]=size(v);
indexes=[];
for i=1:column
    for j=1:row
        if v(j,i)<j*i
            indexes=[indexes;j i];
        end
    end
end
end
