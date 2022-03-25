program ej3;

{Realizar un programa que lea 3 números enteros y los imprima en orden descendente.
Por ejemplo, si se ingresan los valores 4, -10 y 12, deberá imprimir:
12 4 -10}

var
	x,y,z:integer;
	
begin
	
	read(x);read(y);read(z);
	
	if (x>y) and (x>z) then
		if y>z then
			writeln(x,' ',y,' ',z)
		else
			writeln(x,' ',z,' ',y);
	
	if (y>x) and (y>z) then
		if x>z then
			writeln(y,' ',x,' ',z)
		else
			writeln(y,' ',z,' ',x);
			
	if (z>x) and (z>y) then
		if x>y then
			writeln(z,' ',x,' ',y)
		else
			writeln(z,' ',y,' ',x);
	
	read();
end.
