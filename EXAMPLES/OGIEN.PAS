
uses crt, supergfx;

procedure paleta;

var
   i : integer;

begin
     for i:=0 to 63 do
     setcolor(i,0,0,i);
     setcolor(64,0,0,i+44);
end;

var
   x, y, c : integer;
   znak : char;

const
     plomien : integer = 3;

begin
initgfx13h;
{screenoff;}
paleta;
for x:= 1 to 8 do
for y:= 1 to 8 do
begin
     outtextxy(80+x,35+y,5,5,64,'by',false);
     outtextxy(-20+x,95+y,8,8,64,'REGi',false);
     outtextxy(27,180,2,1,64,'MICHAL RYGIELSKI',false);
     outtextxy(28,180,2,1,64,'MICHAL RYGIELSKI',false);
     outtextxy(27,180,2,1,64,'     -',false);
     outtextxy(28,180,2,1,64,'     -',false);
end;
{screenon;}
repeat
      for y:=0 to 200 do
      for x:=0 to 319 do
      if (getpixel(x,y)<63) then
      begin
           c:=getpixel(x+random(plomien)-1,y+1);
           if c>plomien then putpixel(x,y,c-random(plomien)-1)
           else putpixel(x,y,0);
      end;
      if keypressed then znak:=readkey;
      pokazgrafike;
until znak=#27;
closegfx13h;
end.