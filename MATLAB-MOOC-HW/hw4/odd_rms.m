function rm=odd_rms(nn)
    rm=1:2:2*nn-1;
    rm=power(rm,2);
    rm=sum(rm)/nn;
    rm=sqrt(rm);
end