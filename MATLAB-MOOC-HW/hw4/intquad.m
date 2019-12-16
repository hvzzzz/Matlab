 function h=intquad(n,m)
  h=zeros(2*n,2*m);
h(1:n,m+1:end)=1;
h(n+1:end,1:m)=2;
h(n+1:end,m+1:end)=3;
end
