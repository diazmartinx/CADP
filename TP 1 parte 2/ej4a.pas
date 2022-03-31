program ej4a;
{
    4. Realizar un programa que lea 1000 números enteros desde teclado. Informar en pantalla cuáles son
los dos números mínimos leídos.
a. Modifique el ejercicio anterior para que, en vez de leer 1000 números, la lectura finalice al leer
el número 0, el cual debe procesarse.
b. Modifique el ejercicio anterior para que, en vez de leer 1000 números, la lectura finalice al leer
el número 0, el cual no debe procesarse
}

var
    num, min1, min2 :integer;
    cont:word;
    
begin
    cont := 0;
    min1 := 32767;
    min2 := 32767;
    
    repeat
        cont := cont + 1;
        
        writeln('Ingrese numero ',cont,' (0 para finalizar)');
        readln(num);
        
        if num < min1 then begin // mantiene el mas chico en min1
            min2 := min1;
            min1 := num;
        end
            else
                if num < min2 then
                    min2 := num;
        
    until ( (num = 0) or (cont = 1000) );
    
    writeln('Los numeros minimos leidos son: ',min1,' y ',min2);
    read();
    
end.
