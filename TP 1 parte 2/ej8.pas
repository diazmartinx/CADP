program ej8;

{
8. Un local de ropa desea analizar las ventas realizadas en el último mes. Para ello se lee por cada día
del mes, los montos de las ventas realizadas. La lectura de montos para cada día finaliza cuando se
lee el monto 0. Se asume un mes de 31 días. Informar la cantidad de ventas por cada día, y el monto
total acumulado en ventas de todo el mes.
a) Modifique el ejercicio anterior para que además informe el día en el que se realizó la
mayor cantidad de ventas.
}

const
    cant_dias_mes = 3; //esto es para no ingresar datos en 31 dias..

type
    Tmes = 1..cant_dias_mes;

var
    mes,dia_mayor : Tmes;
    monto,total_mes : real;
    i,cant_dia, max_ventas : word;

begin
    total_mes := 0;
    max_ventas := 0;

    for i:=1 to cant_dias_mes do begin
        writeln('Ingrese monto de venta para el dia ',i,'(0 para finalizar)');
        readln(monto);
        
        cant_dia := 0;
        while monto <> 0 do begin
            cant_dia := cant_dia + 1;
            total_mes := total_mes + monto;
        
            
        
            writeln('Ingrese monto de venta para el dia ',i,'(0 para finalizar)');
            readln(monto);
        end;
        
        writeln('Cantidad de ventas del dia ',i,': ',cant_dia);
        
        if cant_dia > max_ventas then begin
            max_ventas := cant_dia;
            dia_mayor := i;
        end;
        
    end;
    
    writeln('Monto total: ',total_mes:2:2);
    
    if max_ventas > 0 then //8 a)
        writeln('Dia en que se realizo la mayor cantidad de ventas: ',dia_mayor,' (',max_ventas,')')
    else
        writeln('No se realizaron ventas');
    
    read();
end.
