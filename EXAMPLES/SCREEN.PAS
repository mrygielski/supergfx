
uses supergfx;

type
    screen = array[0..319, 0..199] of byte;

var
   tab1, tab2 : ^screen;

procedure pobierz_ekran_do(var tab : screen);
var
   i, j : integer;
begin
     for i:= 0 to 319 do
     for j:= 0 to 199 do tab[i,j]:=getpixel(i,j);
end;

procedure draw_random(var tab : screen; col : byte; b : boolean);
var
   i, j, a : integer;
begin
     for i:= 0 to 319 do
     begin
          j:=random(200);
          if b then begin if tab[i,j]<>col then putpixel(i,j,tab[i,j]) end else
          putpixel(i,j,tab[i,j]);
     end;
end;

procedure rysuj_ekran(var tab : screen; col : byte; b : boolean);
var
   i, j : integer;
begin
     for i:= 0 to 319 do
     for j:= 0 to 199 do
     begin
          if b then begin if tab[i,j]<>col then putpixel(i,j,tab[i,j]) end else
          putpixel(i,j,tab[i,j]);
     end;
end;

var
   i, j : integer;

begin
initgfx13h;
new(tab1);new(tab2);
for i:= 0 to 319 do
for j:= 0 to 199 do putpixel(i,j,i xor j);
pobierz_ekran_do(tab1^);
for i:= 0 to 319 do
for j:= 0 to 199 do putpixel(i,j,i and j);
pobierz_ekran_do(tab2^);
cls(0);
rysuj_ekran(tab2^,0,false);
repeat
      draw_random(tab1^,0,false);
      pokazgrafike2;
until keypressed;
closegfx13h;
dispose(tab1);dispose(tab2);
end.