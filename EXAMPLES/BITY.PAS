
{********************************************}
{* SUPERGFX v1.0 by MICHA RYGIELSKI (REGi) *}
{* http://regi.gamedev.pl                   *}
{* email:mrygielski@o2.pl                   *}
{********************************************}

uses supergfx;

var
   i, j : integer;
   bity : array[0..31] of byte;

begin
     initgfx13h;

     bity[1]:=setbit(bity[1],1);bity[2]:=setbit(bity[2],2);
     bity[1]:=setbit(bity[1],2);bity[3]:=setbit(bity[3],3);
     bity[1]:=setbit(bity[1],3);bity[4]:=setbit(bity[4],2);
     bity[1]:=setbit(bity[1],4);bity[5]:=setbit(bity[5],1);
     bity[1]:=setbit(bity[1],5);bity[5]:=setbit(bity[5],2);
     bity[1]:=setbit(bity[1],6);bity[5]:=setbit(bity[5],3);
     bity[5]:=setbit(bity[5],4);bity[5]:=setbit(bity[5],5);
     bity[5]:=setbit(bity[5],6);

     for i:= 0 to 31 do
     for j:= 0 to 7 do
     if getbit(bity[i],j) then
     begin
          outtextxy(i*10-1,j*10,1,1,2,'1',false);
          box(i*10,j*10+100,8,2,10,true);
     end else
     begin
          box(i*10,j*10+100,8,4,12,true);
          outtextxy(i*10-1,j*10,1,1,4,'0',false);
     end;

     pokazgrafike2;
     enterkey;
     closegfx13h;
end.