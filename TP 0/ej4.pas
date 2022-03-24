program ej4;

{Implemente un programa que lea el diámetro D de un círculo e imprima:
a. El radio (R) del círculo (la mitad del diámetro)
b. El área del círculo. Para calcular el área de un círculo debe utilizar la fórmula PI x R
2
c. El perímetro del círculo. Para calcular el perímetro del círculo debe utilizar la fórmula
D*PI (o también PI*R*2)}

var
	D,R,PI:real;

begin
	PI:=3.1416;
	writeln('Ingrese diametro');read(D);
	R:= D/2;
	writeln('Radio: ',R:2:2);
	writeln('Area: ',PI*R*R:2:2);
	writeln('Perimetro: ',D*PI:2:2);
	read();
end.
