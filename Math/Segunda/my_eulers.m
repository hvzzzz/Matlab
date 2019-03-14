function resp = my_eulers(f,x0,y0,h,val)
    global resp;
    x=h+x0;
    y=y0+h*feval(f,x0,y0);
    if abs(x-val)/x>10e-15 
        my_eulers(f,x,y,h,val);
    else
        resp=vpa(y);
        return;
    end
end 
