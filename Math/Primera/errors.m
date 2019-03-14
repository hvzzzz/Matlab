%Esta funcion tiene 3 argumentos de entrada:
%   errors(1,valor exacto,valor aproximado)
%   errors(2,valor actual,valor anterior)
%Segun la opcion escogida la salida de la funcion sera: el error absoluto o el error relativo porcentual
function resp=errors(op,exact_value,aprox_value)
if op==1 %absolute error
    resp=abs(exact_value-aprox_value);
elseif op==2 %percentage relative error
    %resp=(abs(exact_value-aprox_value)/abs(exact_value))*100;
    fprintf("%d%% \n",(abs(exact_value-aprox_value)/abs(exact_value))*100);
else
    fprintf("La opcion escogida no es correcta.Vea help para más información\n");
end
end