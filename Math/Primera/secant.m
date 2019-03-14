function resp=secant(f,limerror,rootprev,rootmed)
global resp;
rootafter = rootmed-f(rootmed)*(rootmed-rootprev)/(f(rootmed)-f(rootprev));
erros=(abs(rootafter-rootmed)/abs(rootmed))*100;
rootprev=rootmed;
rootmed=rootafter;
if erros > limerror
    secant(f,limerror,rootprev,rootmed);
else
    resp=rootafter;
    return;
end
end