program ej4;

{Realizar un programa que lea un número real X. Luego, deberá leer números reales hasta que se
ingrese uno cuyo valor sea exactamente el doble de X (el primer número leído)}
var
	x,aux:real;

begin
	read(x);
	aux:=2*x;
	while x <> aux do begin
		writeln('Ingrese numero:');
		read(x);
		end;
end.
	
