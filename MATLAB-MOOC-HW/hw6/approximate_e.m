function[val,k]= approximate_e(delta)
flag=true;
val=0;
k=1;
while flag
    val=val+1/gamma(k);
    k=k+1;
    if abs(val-exp(1))<=delta
        flag=false;
    end
end
k=k-2;
end
