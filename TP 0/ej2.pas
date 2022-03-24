program ej2;

{ Modifique el programa anterior para que el mensaje de salida muestre la suma de ambos
números:
a. Utilizando una variable adicional
b. Sin utilizar una variable adicional}

var
	num1, num2, suma: integer;

begin
	read(num1);read(num2);
	
	// a) utilizando una variable adicional:
	suma:=num1+num2;
	writeln('La suma es: ',suma);
	
	// b) sin utilizar una variable adicional:
	writeln('La suma es: ',num1+num2);
	read();
end.
