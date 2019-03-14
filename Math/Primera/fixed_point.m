function resp=fixed_point(f,limerror,rootprev)
global resp;
rootafter = f(rootprev);
erros=(abs(rootafter-rootprev)/abs(rootafter))*100;
rootprev=rootafter; 
if erros > limerror
    fixed_point(f,limerror,rootprev);
else
    resp=rootafter;
    return;
end
end
