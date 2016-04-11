
uses supergfx, games;

const
     rad = pi/180;
     ile = 500;

type
    xyz = record x, y, z : real; end;

var
   pix : array[1..ile] of xyz;
   tempx, tempy, tempz : real;
   theta : real;

procedure draw_pix;
var
   i : integer;
begin
     for i:= 1 to ile do
     begin
          putpixel(160+round(pix[i].x),99+round(pix[i].y),55);
     end;
end;

procedure rotate_x;
var
   i : integer;
begin
     for i:= 1 to ile do
     begin
          tempx:=pix[i].x;
          tempy:=pix[i].y;
          tempz:=pix[i].z;
          pix[i].x :=tempx;
          pix[i].y :=tempy*cos(theta)+tempz*sin(theta);
          pix[i].z :=-tempy*sin(theta)+tempz*cos(theta);
     end;
end;

procedure rotate_y;
var
   i : integer;
begin
     for i:= 1 to ile do
     begin
          tempx:=pix[i].x;
          tempy:=pix[i].y;
          tempz:=pix[i].z;
          pix[i].x:=tempx*cos(theta)-tempz*sin(theta);
          pix[i].y:=tempy;
          pix[i].z:=tempx*sin(theta)+tempz*cos(theta);
     end;
end;

procedure rotate_z;
var
   i : integer;
begin
     for i:= 1 to ile do
     begin
          tempx:=pix[i].x;
          tempy:=pix[i].y;
          tempz:=pix[i].z;
          pix[i].x:=tempx*cos(theta)-tempy*sin(theta);
          pix[i].y:=tempx*sin(theta)+tempy*cos(theta);
          pix[i].z:=tempz;
     end;
end;

var
   i, l : integer;

begin
initgfx13h;
initnewkeyint;
  randomize;
for i:= 1 to ile do
begin
     l:=random(70)-35;
     pix[i].x:=l;
     l:=random(70)-35;
     pix[i].y:=l;
     l:=random(70)-35;
     pix[i].z:=l;
end;
for i:= 1 to 255 do setcolor(i,0,0,i);
randomize;
repeat
      theta:=3.14/90;
      draw_pix;
      rotate_x;rotate_y;rotate_z;
      outtextxy(40,7,2,2,30,'REGi 3D ROTATE',false);
      outtextxy(75,187,1,1,50,'http://regi.gamedev.pl',false);
      grind(85,187,235,198);
      grind(40,2,280,37);
      blur(100,40,218,160);
      pokazgrafike2;
until keydown[1];
setoldkeyint;
closegfx13h;
end.