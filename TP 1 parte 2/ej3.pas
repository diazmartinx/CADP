program ej3;

{
    3. Realizar un programa que lea desde teclado la información de alumnos ingresantes a la carrera
Analista en TIC. De cada alumno se lee nombre y nota obtenida en el módulo EPA (la nota es un
número entre 1 y 10). La lectura finaliza cuando se lee el nombre “Zidane Zinedine“, que debe
procesarse. Al finalizar la lectura informar:
- La cantidad de alumnos aprobados (nota 8 o mayor) y
- la cantidad de alumnos que obtuvieron un 7 como nota

}
type
    Tnombre = string[64];
    Tnota = 1..10;
    
const
    corte = 'Zidane Zinedine';
    
var
    nombre : Tnombre;
    nota : Tnota;
    cant_aprobados, cant_7: word; // word va de 0 a 65535
begin
    cant_aprobados := 0;
    cant_7 := 0;
    
    repeat
        writeln('Ingrese nombre:');readln(nombre);
        writeln('Ingrese nota de ',nombre);readln(nota);
        
        if nota >= 8 then
            cant_aprobados := cant_aprobados + 1
        else
            if nota = 7 then
                cant_7 := cant_7 +1
    until ( nombre = corte );
    
    writeln('Alumnos aprobados: ',cant_aprobados);
    writeln('Alumnos que obtuvieron un 7: ',cant_7);
    read();
end.
