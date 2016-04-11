{***************************}
{* MICHA RYGIELSKI (REGi) *}
{* http://regi.gamedev.pl  *}
{* email:mrygielski@o2.pl  *}
{***************************}

type
    Tscreen = array[0..63999] of byte;

var
   scr : Tscreen;
   l, sl : array[1..2] of integer;

procedure setvideo(mode : word); assembler;
asm
 mov ax, mode
 int 10h
end;

procedure paleta;

procedure setcolor(col : byte; r, g, b : byte);
begin
     port[$3C8]:=col;
     port[$3C9]:=r;
     port[$3C9]:=g;
     port[$3C9]:=b;
end;

var
   i : integer;

begin
 for i:= 1 to 64 do setcolor(i,i,i,i)
end;

procedure putpixel(x, y : integer; c : byte); begin scr[y*320+x]:=c; end;

procedure hline(x, y, d : integer; c : byte);
var i : integer;
begin
 for i:= x to d do putpixel(i,y,c);
end;
procedure vline(x, y, s : integer; c : byte);
var i : integer;
begin
 for i:= y to s do putpixel(x,i,c);
end;

procedure blur(xx, yy, dd, ss : integer);
var x, y : integer;
    c : byte;
begin
 for x:= xx to dd do
 for y:= yy to ss do
 begin
  c:=(scr[320*y-1+x]+scr[320*y+x]+scr[320*y+x+1]+scr[320*(y-3)+x]) div 4;
  if (c>0) then dec(c);
  scr[320*(y-1)+x]:=c;
 end;
end;

procedure rectangle(x, y, d, s : integer; c : byte);
begin
 vline(x,y,s,c);
 vline(d,y,s,c);
 hline(x,y,d,c);
 hline(x,s,d,c);
end;

begin
 setvideo($13);
 paleta;

 l[1]:=100;l[2]:=160;
 sl[1]:=1;sl[2]:=1;

 repeat
       l[1]:=l[1]+sl[1];
       l[2]:=l[2]+sl[2];

       hline(2,l[1],317,20);
       vline(l[2],3,196,20);
       rectangle(l[2]-5,l[1]-5,l[2]+5,l[1]+5,20);

       if (l[1]<9) or (l[1]>190) then sl[1]:=-sl[1];
       if (l[2]<9) or (l[2]>310) then sl[2]:=-sl[2];

       blur(2,4,317,197);
       move(scr,mem[$a000:0],64000);

 until port[$60]=1;

 setvideo($3);
end.