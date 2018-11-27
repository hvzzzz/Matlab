function tipo=integerize(v)
flag8=v>=-(2^7)&v<=2^7-1;
flag16=v>=-(2^15)&v<=2^15-1;
flag32=v>=-(2^31)&v<=2^31-1;
flag64=v>=-(2^63)&v<=2^63-1;
[row,column]=size(v);
if sum(sum(flag8))==row*column
    tipo='int8';
elseif sum(sum(flag16))==row*column
    tipo='int16';
elseif sum(sum(flag32))==row*column
    tipo='int32';
elseif sum(sum(flag64))==row*column
    tipo='int64';
else
    tipo='NONE';
end
end