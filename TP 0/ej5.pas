program ej5;

{5. Un kiosquero debe vender una cantidad X de caramelos entre Y clientes, dividiendo
cantidades iguales entre todos los clientes. Los que le sobren se los quedará para él.
a. Realice un programa que lea la cantidad de caramelos que posee el kiosquero (X),
la cantidad de clientes (Y), e imprima en pantalla un mensaje informando la
cantidad de caramelos que le corresponderá a cada cliente, y la cantidad de
caramelos que se quedará para sí mismo.
b. Imprima en pantalla el dinero que deberá cobrar el kiosquero si cada caramelo
tiene un valor de $1.60,}


var
	X, Y:integer;
	
begin

	writeln('Ingrese cantidad de caramelos');read(X);
	writeln('Ingrese cantidad de clientes');read(Y);
	
	// a)
	writeln('Cantidad de caramelos por cliente: ', x div y);
	writeln('Se queda para si mismo: ', x mod y);
	
	// b)
	writeln('El kiosquero cobrara ',(x - x mod y)*1.6:2:2);
	read();
end.
