program ej1;

{Realizar un programa que lea 2 números enteros desde teclado e informe en pantalla cuál de los
dos números es el mayor. Si son iguales debe informar en pantalla lo siguiente: “Los números leídos
son iguales”}

var
	x,y:integer;
 
begin
	read(x);read(y);
	
	if x = y then
		writeln('Los numeros leidos son iguales')
	else
		if x > y then
			writeln(x,' es mayor')
		else
			writeln(y,' es mayor');
	read();
end.
	
