
uses supergfx;

procedure paleta;

var
   i : integer;

begin
     for i:=0 to 63 do
     setcolor(i,i,i shr 2,0);
     setcolor(64,i,i shr 2,0);
end;

var
   x, y, c  : integer;
   plomien : integer;

begin
initgfx13h;
paleta;
plomien:=3;
randomize;
line(1,199,319,199,64);
repeat
      for x:= 0 to 320 do
      for y:= 0 to 200 do
      begin
           if (getpixel(x,y)<63) then
           begin
                c:=getpixel(x-random(plomien-2),y+1);
                if c>plomien then
                begin
                     putpixel(x+random(3)-1,y,c-random(plomien)-1);
                     putpixel(x+random(3)-1,y-1,c-random(plomien)-1);
                end
                else
                begin
                     putpixel(x,y,0);
                end;
           end;
      end;
      pokazgrafike;
until keypressed;
closegfx13h;
end.