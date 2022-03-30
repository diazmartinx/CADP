program ej6;
{
6. Realizar un programa que lea información de 200 productos de un supermercado. De cada producto
se lee código y precio (cada código es un número entre 1 y 200). Informar en pantalla:
- Los códigos de los dos productos más baratos.
- La cantidad de productos de más de 16 pesos con código par.
}

// Pretenden que ingresa 200 productos ??
// Hagamoslo con 5..
const
    cant_productos = 5; // cantidad de productos

type
    Tcodigo = 1..cant_productos;
    
var
    cod, codmin1, codmin2:Tcodigo;
    precio, min1, min2:real;
    i, cant_par_16:byte;

// el enunciado no es muy completo
// voy a usar un for, lo cual deducimos el codigo con la variable i
// uso for por que es la guia de for xd
begin
    cant_par_16 := 0;
    for i:=1 to cant_productos do begin
        writeln('Ingrese precio de producto ',i);
        readln(precio);
        
        if i = 1 then begin // inicializa min1 
            min1 := precio;
            codmin1 := i;
        end
        else
            if i = 2 then  // inicializa min2
                if precio<min1 then begin // mantiene el mas chico en min1
                    min2 := min1;
                    min1 := precio;
                    codmin2 := codmin1;
                    codmin1 := i;
                end
                    else begin
                        min2 := precio;
                        codmin2 := i;
                    end
            else
                if precio < min1 then begin
                    min2 := min1;
                    min1 := precio;
                    codmin2 := codmin1;
                    codmin1 := i;
                end
                    else
                        if precio < min2 then begin
                            min2 := precio;
                            codmin2 := i;
                        end;
        
        if (precio > 16) and ((i mod 2)=0) then
            cant_par_16 := cant_par_16 + 1;
    end;
    
    writeln('Los codigos de los dos productos mas baratos son: ',codmin1,' y ',codmin2);
    writeln('Cantidad de productos de mas de 16 pesos con codigo par: ',cant_par_16);
    read();
end.
