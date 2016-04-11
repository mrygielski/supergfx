
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
outtextxy(75,0,1,1,60,'http://regi.gamedev.pl',false);
outtextxy(105,191,1,1,60,'SUPER GFX v1.0',false);
repeat
      rectangle(30,30,290,170,63);
      circle(160,100,40,63);
      circle(105,100,15,63);
      circle(215,100,15,63);
      circle(140,95,10,63);
      circle(160,110,5,63);
      circle(180,95,10,63);
      ellipse(160,127,10,3,63);
      fire(10,10,310,190);
      pokazgrafike2;
until keypressed;
closegfx13h;
end.