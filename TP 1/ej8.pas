program ej8;
{Realizar un programa que lea tres caracteres, e informe si los tres eran letras vocales o si al menos
uno de ellos no lo era. Por ejemplo, si se leen los caracteres “a e o” deberá informar “Los tres son
vocales”, y si se leen los caracteres “z a g” deberá informar “al menos un carácter no era vocal”.}

var
	x,y,z:char;
	voc1,voc2,voc3:boolean;
begin
	readln(x);readln(y);readln(z);
		
	voc1 := (x = 'a') or (x = 'e') or (x = 'i') or (x = 'o') or (x = 'u');
	voc2 := (y = 'a') or (y = 'e') or (y = 'i') or (y = 'o') or (y = 'u');
	voc3 := (z = 'a') or (z = 'e') or (z = 'i') or (z = 'o') or (z = 'u');
		
	if (voc1) and (voc2) and (voc3) then
		writeln('Los tres son vocales')
	else
		writeln('Al menos un carácter no era vocal');
		
	read();
end.
