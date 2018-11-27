function price=fare(dist,age)
dist=fix(dist);
if dist<=1
    price=2;
else
    if dist<=10
        price=(dist-1)*0.25+2;
    else
        price=(dist-10)*0.10+4.25;
    end
end
if age>=60 || age<=18
    price=price-price*0.2;
end