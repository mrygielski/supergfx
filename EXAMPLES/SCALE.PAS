
{******************************************}
{*SUPERGFX v1.0 by MICHAù RYGIELSKI (REGi)*}
{*          http://rpage.prv.pl           *}
{*     email:regi007@poczta.onet.pl       *}
{******************************************}

uses supergfx;

var
   image : Tsprite;
   i, j : integer;
   x, y : integer;

begin
initgfx13h;
for i:= 1 to 255 do setcolor(i,i,i,i);
rectangle(1,1,100,100,14);
rectangle(2,2,99,99,14);
for i:= 3 to 98 do
for j:= 3 to 98 do putpixel(i,j,i div 2);
outtextxy(1,45,1,1,27,'SUPERGFX '+ver,false);
outtextxy(21,55,1,1,27,'by REGi',false);
save_sprite(1,1,100,100,image);
bar(0,0,319,199,0);
scale_sprite(0,0,100,100,10,10,image);
scale_sprite(10,0,100,100,20,20,image);
scale_sprite(30,0,100,100,40,40,image);
scale_sprite(70,0,100,100,90,90,image);
scale_sprite(160,0,100,100,150,150,image);
outtextxy(85,190,1,1,15,'http://rpage.prv.pl',false);
pokazgrafike2;
enterkey;
closegfx13h;
end.