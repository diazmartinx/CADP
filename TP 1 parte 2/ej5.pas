program ej5;

{
    5. Realizar un programa que lea números enteros desde teclado. La lectura debe finalizar cuando se
ingrese el número 100, el cual debe procesarse. Informar en pantalla:
◦ El número máximo leído.
◦ El número mínimo leído.
◦ La suma total de los números leídos.

}

var
    num, max, min, suma:integer;
    primera:boolean;
    
begin

    primera := true;
    
    repeat
        writeln('Ingrese numero:');readln(num);
        if primera then begin
            max := num;
            min := num;
            suma := num;
            primera := false;
        end
            else
                begin
                    if num > max then
                        max:=num
                    else
                        if num < min then
                            min:=num;
                    suma := suma + num;
                end;
    until (num = 100);

    writeln('Maximo: ',max);
    writeln('Minimo: ',min);
    writeln('Suma: ',suma);
    read();

end.
