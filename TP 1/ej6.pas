program ej6;

{Realizar un programa que lea el número de legajo y el promedio de cada alumno de la facultad. La
lectura finaliza cuando se ingresa el legajo -1, que no debe procesarse.
Por ejemplo, se lee la siguiente secuencia:
33423
8.40
19003
6.43
-1
En el ejemplo anterior, se leyó el legajo 33422, cuyo promedio fue 8.40, luego se leyó el legajo
19003, cuyo promedio fue 6.43, y finalmente el legajo -1 (para el cual no es necesario leer un
promedio).
Al finalizar la lectura, informar:
○ La cantidad de alumnos leída (en el ejemplo anterior, se debería informar 2)
○ La cantidad de alumnos cuyo promedio supera 6.5 (en el ejemplo anterior, se debería informar 1)
○ El porcentaje de alumnos destacados (alumnos con promedio mayor a 8.5) cuyo legajo sean
menor al valor 2500 (en el ejemplo anterior se debería informar 0%)}

var
	legajo, cant, cantsup, cantdest:integer;
	prom:real;
	
begin
	cant:=0;cantsup:=0;cantdest:=0;
	writeln('Ingrese numero de legajo:');read(legajo);
	
	while legajo <> -1 do begin
		writeln('Ingrese promedio:');read(prom);
		
		cant:=cant+1;
		
		if prom>6.5 then
			cantsup:=cantsup+1;
		
		if (prom>8.5) and (legajo<2500) then
			cantdest:=cantdest+1;
			
		writeln('Ingrese numero de legajo (-1 para finalizar):');read(legajo);
	end;
	
	if cant>0 then begin
		writeln('Cantidadd e alumnos: ',cant);
		writeln('Cantidad de alumnos cuyo promedio supera 6.5: ',cantsup);
		writeln('Porcentaje de alumnos destacados: ',cantdest*100/cant:2:2,'%');
	end;
	read();
end.
	
