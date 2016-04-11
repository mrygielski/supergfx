
{********************************************}
{* SUPERGFX v1.0 by MICHAù RYGIELSKI (REGi) *}
{* http://regi.gamedev.pl                   *}
{* email:mrygielski@o2.pl                   *}
{********************************************}

uses supergfx;

var
   font : Tfont;

begin
initgfx13h;
new_font('big.fn',font);
outtextfntxy(50,50,8,15,1,1,'MICHAù RYGIELSKI',font);
outtextfntxy_rainbow(50,67,8,18,1,1,'MICHAù RYGIELSKI',font);
outtextfntxy(50,90,8,15,1,1,'ABCDEFGHIJKLMNOPRSTUVXYZ',font);
pokazgrafike2;
enterkey;
closegfx13h;
end.