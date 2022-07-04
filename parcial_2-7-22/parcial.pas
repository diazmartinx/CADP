program parcial1_tema1;

const
  clases = 12;
  min_asis = 8;

type

  Tnota = 4..10;
  Tturno = 1..4;
  Tasis = array[1..clases] of boolean;
  TVturno = array[Tturno] of integer;

  alumno = record
    dni:string[10];
    nombre: string[10];
    apellido: string[10];
    nota: Tnota;
    turno: Tturno;
    asis: Tasis;
  end;

  lista = ^nodo;
  nodo = record
    elem: alumno;
    sig: lista;
  end;

function puedeRendir(asis:Tasis):boolean;
var
  i,cont:integer;
  aux:boolean;
begin
  aux:=false;
  cont:=0;
  for i:=1 to clases do begin
    if asis[i] then
       cont := cont + 1;
  end;
  if cont>=min_asis then
     aux:=true;

  puedeRendir := aux;
end;

procedure armaLista(var pri:lista; alum:alumno);
var
  nuevo:lista;
begin
  if puedeRendir(alum.asis) then begin
    new(nuevo);
    nuevo^.elem := alum;
    nuevo^.sig := pri^.sig;
    pri := nuevo;
  end;
end;

procedure imprime(pri:lista);
var
  cont_turno:TVturno;
  i, max, turnMax, no0:integer;
  dni : string[10];
begin

  for i:=1 to 4 do
      cont_turno[i]:=0;

  no0:=0;

  while pri<>nil do begin

    if pri^.elem.nota >= 8 then begin
      writeln(pri^.elem.apellido);
      writeln(pri^.elem.nombre);
      writeln(pri^.elem.dni);
    end;

    cont_turno[pri^.elem.turno] := cont_turno[pri^.elem.turno] + 1;

    dni := pri^.elem.dni;

    i:=1;
    while (i<=10) and (dni[i]<>'0') do
          i:=i+1;
    if i=10 then // no posee un 0 en el dni
       no0 := no0 + 1;

    pri := pri^.sig;
  end;

  max:=cont_turno[1];
  turnMax:=1;
  for i:=2 to 4 do
    if cont_turno[i] > max then begin
      max := cont_turno[i];
      turnMax := i;
    end;

  writeln(turnMax);
  writeln(no0);

end;

var
  pri, dispongo:lista;
begin
  pri := nil;

  // dispongo asumo que esta cargada con todos los alumnos
  while dispongo<>nil do
        armaLista(pri,dispongo^.elem);
        dispongo := dispongo^.sig;
  end;

  imprime(pri);
end.
