
uses supergfx;

var
   fnt : Tfont2;
   i, j : integer;

begin
initgfx13h;
new_font2('litt.fnt',fnt);
outtextfntxy2(40,40,9,14,1,1,'MICHAù RYGIELSKI',fnt);
pokazgrafike;
enterkey;
closegfx13h;
end.