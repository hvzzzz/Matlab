function percent=zero_stat(matrix)
    zero_count=cumsum(matrix,2,'reverse');
    [row,col]=size(matrix);
    percent=(row*col-sum(zero_count(:,1)))*100/(col*row);
end