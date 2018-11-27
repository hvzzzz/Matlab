function w=move_me(v,a)
if nargin==1
    a=0;
end
logi=v==a;
w=v(v==a);
for i=length(v):-1:1
    if(logi(i)==0)
        w=[v(i) w];
    end
end
end