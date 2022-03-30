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
    num, min1, min2, aux :integer;
    cont :word;
    
begin
    cont := 0;
    repeat
        cont := cont + 1;
        
        writeln('Ingrese numero ',cont,' (0 para finalizar)');
        readln(num);
        
        if cont = 1 then // inicializa min1 
            min1 := num
        else
            if cont = 2 then  // inicializa min2
                if num<min1 then begin // mantiene el mas chico en min1
                    aux := min1;
                    min1 := num;
                    min2 := aux;
                end
                else
                    min2 := num
            else
                if num < min1 then begin
                    aux := min1;
                    min1 := num;
                    min2 := aux;
                end
                else
                    if num < min2 then
                        min2 := num;
        
    until ( (num = 0) or (cont = 1000) );
    
    writeln('Los numeros minimos leidos son: ',min1,' y ',min2);
    read();
    
end.
