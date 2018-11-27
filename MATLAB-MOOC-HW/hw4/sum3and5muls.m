function adds = sum3and5muls(limit)
if limit%3==0 && limit%5==0
    threes=sum(3:3:limit);
    fives=sum(5:5:limit-1);
    adds=threes+fives;
else
    threes=sum(3:3:limit);
    fives=sum(5:5:limit);
    adds=threes+fives;
end