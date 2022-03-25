program ej7;

{Realizar un programa que lea el código, el precio actual y el nuevo precio de los productos de un
almacén. La lectura finaliza al ingresar el producto con el código 32767, el cual debe procesarse.
Para cada producto leído, el programa deberá indicar si el nuevo precio del producto supera en un
10% al precio anterior.
Por ejemplo:
○ Si se ingresa el código 10382, con precio actual 40, y nuevo precio 44, deberá imprimir: “el
aumento de precio del producto 10382 no supera el 10%”
○ Si se ingresa el código 32767, con precio actual 30 y nuevo precio 33,01, deberá imprimir: “el
aumento de precio del producto 32767 es superior al 10%”}

var
	cod:integer;
	precio, n_precio:real;
	
begin

	writeln('Ingrese codigo:');read(cod);
	
	while cod <> 32767 do begin
		writeln('Ingrese precio actual:');read(precio);
		writeln('Ingrese nuevo precio:');read(n_precio);
		
		if n_precio > precio*1.1 then
			writeln('el aumento de precio del producto ',cod,' es superior al 10%')
		else
			writeln('el aumento de precio del producto ',cod,' no supera el 10%');
		
		writeln('Ingrese codigo (32767 para finalizar):');read(cod);
	end;
	
	writeln('Ingrese precio actual:');read(precio);
	writeln('Ingrese nuevo precio:');read(n_precio);
	
	if n_precio > precio*1.1 then
		writeln('el aumento de precio del producto ',cod,' es superior al 10%')
	else
		writeln('el aumento de precio del producto ',cod,' no supera el 10%');
			
	read();
end.
