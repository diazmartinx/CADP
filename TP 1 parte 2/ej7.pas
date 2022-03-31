program ej7;

{
    7. Realizar un programa que lea desde teclado información de autos de carrera. Para cada uno de los
autos se lee el nombre del piloto y el tiempo total que le tomó finalizar la carrera. En la carrera
participaron 100 autos. Informar en pantalla:
- Los nombres de los dos pilotos que finalizaron en los dos primeros puestos.
- Los nombres de los dos pilotos que finalizaron en los dos últimos puestos.

}

const
    cant_pilotos = 5;

type
    Tnombre = string[30];

var
    nombre, nmin1, nmin2, nmax1, nmax2: Tnombre;
    tiempo, min1, min2, max1, max2: real;
    i:byte;

begin
    min1 := 99999; min2 := 99999;
    max1 := -99999; max2 := -99999;
    nmin1 := ''; nmin2 := '';
    nmax1 := ''; nmax2 := '';
    
    for i:=1 to cant_pilotos do begin
        readln(nombre);readln(tiempo);
        
        if tiempo < min1 then begin
            min2 := min1;
            min1 := tiempo;
            nmin2 := nmin1;
            nmin1 := nombre;
        end
            else
                if tiempo < min2 then begin
                    min2 := tiempo;
                    nmin2 := nombre;
                end;
                
        if tiempo > max1 then begin
            max2 := max1;
            max1 := tiempo;
            nmax2 := nmax1;
            nmax1 := nombre;
        end
            else
                if tiempo > max2 then begin
                    max2 := tiempo;
                    nmax2 := nombre;
                end;
    end;
    
    writeln ('Menor tiempo: ',nmin1,'(',min1:2:2,') | ',nmin2,'(',min2:2:2,')');
    writeln ('Mayor tiempo: ',nmax1,'(',max1:2:2,') | ',nmax2,'(',max2:2:2,')');
    read();
    
end.
