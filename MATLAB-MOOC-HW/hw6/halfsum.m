function resp=halfsum(v)
[row,column]=size(v);
resp=0;
count=0;
keep=row;
if column<=row
    while count<column
        count=count+1;
        resp=resp+sum(v(row,column:-1:count));
        %v(row,column:-1:count);
        row=row-1;
    end
else
    while count<keep
        count=count+1;
        resp=resp+sum(v(row,column:-1:count));
        %v(row,column:-1:count);
        row=row-1;
    end
%     while keep<column
%         keep=keep+1;
%         resp=resp+sum(v(row,column:-1:keep));
%         %v(row,column:-1:keep);
%         row=row-1;
%     end
end
end
   