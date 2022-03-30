{
1. Realizar un programa que lea 10 números enteros e informe la suma total de los números leídos.
a. Modifique el ejercicio 1 para que además informe la cantidad de números mayores a 5
}

program ej1;

var
    num, suma : integer;
    i, mayor : byte;

begin
    suma := 0;
    mayor := 0; // esto es necesario para el inciso a)
    for i:=1 to 10 do begin
        writeln('Ingrese numero ',i,':');
        readln(num);
        suma := suma + num;
        
        // a)------------------
        if num>5 then
            mayor := mayor +1;
        // --------------------
    end;
    writeln('Suma total: ', suma);
    writeln('Cantidad de numeros mayores que 5: ',mayor);
    read();
end.
