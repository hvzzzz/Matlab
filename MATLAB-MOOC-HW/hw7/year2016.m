function s=year2016(n)
s=[];
week={'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat','Sun'};
days=[31,29,31,30,31,30,31,31,30,31,30,31];
countday=5;
for i=1:12
   for j=1:days(i)
       if i==1
        m1(j).month='January';
        m1(j).date=j;
        m1(j).day=week{countday};
        countday=countday+1;
        if countday>7
            countday=1;
        end
       end
        if i==2
        m2(j).month='February';
        m2(j).date=j;
        m2(j).day=week{countday};
        countday=countday+1;
        if countday>7
            countday=1;
        end
        end
        if i==3
        m3(j).month='March';
        m3(j).date=j;
        m3(j).day=week{countday};
        countday=countday+1;
        if countday>7
            countday=1;
        end
        end
        if i==4
        m4(j).month='April';
        m4(j).date=j;
        m4(j).day=week{countday};
        countday=countday+1;
        if countday>7
            countday=1;
        end
        end
        if i==5
        m5(j).month='May';
        m5(j).date=j;
        m5(j).day=week{countday};
        countday=countday+1;
        if countday>7
            countday=1;
        end
        end
        if i==6
        m6(j).month='June';
        m6(j).date=j;
        m6(j).day=week{countday};
        countday=countday+1;
        if countday>7
            countday=1;
        end
        end
        if i==7
        m7(j).month='July';
        m7(j).date=j;
        m7(j).day=week{countday};
        countday=countday+1;
        if countday>7
            countday=1;
        end
        end
        if i==8
        m8(j).month='August';
        m8(j).date=j;
        m8(j).day=week{countday};
        countday=countday+1;
        if countday>7
            countday=1;
        end
        end
        if i==9
        m9(j).month='September';
        m9(j).date=j;
        m9(j).day=week{countday};
        countday=countday+1;
        if countday>7
            countday=1;
        end
        end
        if i==10
        m10(j).month='October';
        m10(j).date=j;
        m10(j).day=week{countday};
        countday=countday+1;
        if countday>7
            countday=1;
        end
        end
        if i==11
        m11(j).month='November';
        m11(j).date=j;
        m11(j).day=week{countday};
        countday=countday+1;
        if countday>7
            countday=1;
        end
        end
        if i==12
        m12(j).month='December';
        m12(j).date=j;
        m12(j).day=week{countday};
        countday=countday+1;
        if countday>7
            countday=1;
        end
        end
   end
end
[row1,col1]=size(n);
if row1~=1||col1~=1
    return;
end
if n==1
    s=m1;
elseif n==2
    s=m2;
elseif n==3
    s=m3;
elseif n==4
    s=m4;
elseif n==5
    s=m5;
elseif n==6
    s=m6;
elseif n==7
    s=m7;
elseif n==8
    s=m8;
elseif n==9
    s=m9;
elseif n==10
    s=m10;
elseif n==11
    s=m11;
elseif n==12
    s=m12;
end
end