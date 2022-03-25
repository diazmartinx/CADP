program ej2;

{ Realizar un programa que lea un número real e imprima su valor absoluto. El valor absoluto de un
número X, se escribe |X| y se define como:
|X| = X cuando X es mayor o igual a cero
|X| = -X cuando X es menor a cero}

var
	x:real;

begin
	read(x);
	if x>=0 then
		writeln('Modulo: ',x:2:2)
	else
		writeln('Modulo: ',-x:2:2);
	read();
end.
