function age=day_diff( month1, day1, month2, day2)
days=[31,28,31,30,31,30,31,31,30,31,30,31];
[row1 col1]=size(month1);
[row2 col2]=size(month2);
[row3 col3]=size(day1);
[row4 col4]=size(day2);
if(row1~=1||row2~=1||row3~=1||row4~=1||col1~=1||col2~=1||col3~=1||col4~=1)
    age=-1;
    return;
end
if isreal(month1) && rem(month1,1)==0 && isreal(month2) && rem(month2,1)==0 ...
   &&isreal(day1) && rem(day1,1)==0 && isreal(day2) && rem(day2,1)==0
	if month1<13 && month2<13 && month1>0 && month2>0 && ...
	   day1>0 && day1<=days(1,month1) && day2>0 && day2<=days(1,month2)
		if month1<month2
			if month2-month1==1
				age=days(1,month1)-day1+day2;
			else
				age=days(1,month1)-day1+day2+sum(days(1,month1+1:1:month2-1));
			end
		end
		if month1>month2
			if month1-month2==1
				age=days(1,month2)-day2+day1;   
			else
				age=days(1,month2)-day2+day1+sum(days(1,month2+1:month1-1));
			end
		end
		if month1==month2
			age=abs(day1-day2);
		end
	else
		age=-1;
	end
else
	age=-1;
end
end