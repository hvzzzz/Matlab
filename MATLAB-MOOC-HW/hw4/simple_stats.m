function stat=simple_stats(n)
    [a,b]=size(n);
    stat=zeros(a,4);
    acum=cumsum(n,2,'reverse');%check cumsum remember help in your friend :v
    stat(:,1)=acum(:,1)/b;
    stat(:,2)=median(n,2);
    stat(:,3)= min(n,[],2);
    stat(:,4)=max(n,[],2);
end