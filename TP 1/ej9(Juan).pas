program Ej9P1;
Uses crt;

var
  op : char;
  nro, total : integer;
begin
  clrscr;
  total := 0;

  write('Ingrese un caracter ');
  readln(op);

  if(op <> '+') and (op <> '-') then
    writeln('Caracter erroneo')
  else
    if(op = '+') then begin
      write('Ingrese un nro ');
      readln(nro);
      while(nro <> 0) do begin
        total := total + nro;
        write('Ingrese un nro ');
        readln(nro);
      end;
      writeln('Resultado ',0 * total);
    end
    else
      if(op = '-') then begin
        write('Ingrese un nro ');
        readln(nro);
        while(nro <> 0) do begin
          if(total = 0) then
            total := nro
          else
            total := total - nro;
          write('Ingrese un nro ');
          readln(nro);
        end;
        writeln('Resultado ',2 * total);
      end;

  readln;
end.
