program ej2;

{
2. Realice un programa que lea 10 números e informe cuál fue el mayor número leído. Por ejemplo, si
se lee la secuencia:
3 5 6 2 3 10 98 8 -12 9
deberá informar: “El mayor número leído fue el 98”
}

var
    i   : byte;
    num, max : integer;

begin
    for i:=1 to 10 do begin
        writeln('Ingrese numero ',i,':');
        readln(num);
        if i = 1 then // primera iteracion
            max := num
        else
            if num>max then
                max := num;
    end;
    writeln('El mayor numero leido fue el ',max);
    read();
end.
