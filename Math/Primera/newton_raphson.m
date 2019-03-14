function resp=newton_raphson(f,limerror,rootprev)
global resp;
rootafter = rootprev-subs(f,rootprev)/subs(diff(f),rootprev);
erros=(abs(rootafter-rootprev)/abs(rootafter))*100;
rootprev=rootafter; 
if erros > limerror
    newton_raphson(f,limerror,rootprev);
else
    resp=vpa(rootafter);
    return;
end
end
