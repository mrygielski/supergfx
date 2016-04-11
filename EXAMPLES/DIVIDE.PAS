{********************************************}
{* SUPERGFX v1.0 by MICHAù RYGIELSKI (REGi) *}
{* http://regi.gamedev.pl                   *}
{* email:mrygielski@o2.pl                   *}
{********************************************}

uses supergfx;

var
   i : integer;

begin
asm
   mov ax, $3
   int 10h
end;
for i:= 1 to 24 do writeln(i,' divide 2 = ',divide_number(i,2));
end.