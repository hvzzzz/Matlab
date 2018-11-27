function vector=flip_it(m)
[a b]=size(m);
vector=[m(b:-1:1)];
end