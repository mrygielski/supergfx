
{********************************************}
{* SUPERGFX v1.0 by MICHAù RYGIELSKI (REGi) *}
{* http://regi.gamedev.pl                   *}
{* email:mrygielski@o2.pl                   *}
{********************************************}

uses supergfx;
var i : integer;
begin
initgfx13h;
for i:=0 to 63 do setcolor(i,0,0,i);
outtextxy(85,90,5,5,64,'by',false);
outtextxy(-36,20,5,8,64,'SUPERGFX',false);
outtextxy(27,140,2,8,64,'MICHAL RYGIELSKI',false);
outtextxy(27,140,2,8,64,'     -',false);
for i:= 1 to 5 do blur(0,3,319,199);
pokazgrafike2;
enterkey;
closegfx13h;
end.