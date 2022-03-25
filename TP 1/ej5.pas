program ej5;

{Modifique el ejercicio anterior para que, luego de leer el número X, se lean a lo sumo 10 números
reales. La lectura deberá finalizar al ingresar un valor que sea el doble de X, o al leer el décimo
número, en cuyo caso deberá informarse “No se ha ingresado el doble de X”.}

var
	x,aux:real;
	i:byte;

begin
	i:=0;
	read(x);
	aux:=2*x;
	while (x <> aux) and (i<10) do begin
		i:=i+1;
		writeln('Ingrese numero:');
		read(x);
		end;
	if i<10 then
		writeln('No se ha ingresado el doble de X');
	read();
end.
