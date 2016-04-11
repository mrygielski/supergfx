
{********************************************}
{* SUPERGFX v1.0 by MICHAù RYGIELSKI (REGi) *}
{* http://regi.gamedev.pl                   *}
{* email:mrygielski@o2.pl                   *}
{********************************************}

uses supergfx;

var
   image : Tsprite;
   i, j : integer;
   k : real;

begin
initgfx13h;
rectangle(1,1,100,100,14);
line(1,1,100,100,12);
line(1,100,100,1,12);
outtextxy(1,45,1,1,15,'SUPERGFX '+ver,false);
outtextxy(21,55,1,1,15,'by REGi',false);
save_sprite(1,1,100,100,image);
bar(0,0,319,199,0);
repeat
      outtextxy(75,190,1,1,15,'http://regi.gamedev.pl',false);
      k:=k+0.8;
      rotate_sprite(k,image,160,100,100,100,0);
      pokazgrafike2;
      cls(0);
until keypressed;
closegfx13h;
end.