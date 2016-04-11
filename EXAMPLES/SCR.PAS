
{********************************************}
{* SUPERGFX v1.0 by MICHAù RYGIELSKI (REGi) *}
{* http://regi.gamedev.pl                   *}
{* email:mrygielski@o2.pl                   *}
{********************************************}

uses supergfx;

var
   tab1, tab2 : ^ekran;

procedure init;
begin
     initgfx13h;
     new(tab1);
     new(tab2);
     czysc_bufor(tab1^,0);
     czysc_bufor(tab2^,0);
end;

procedure done;
begin
     closegfx13h;
     dispose(tab1);
     dispose(tab2);
end;

begin
     init;

     outtextxy(80,90,1,1,8,'by MICHAL RYGIELSKI',false);
     outtextxy(80,90,1,1,8,'        -',false);
     pobierz_ekran_do(40,70,270,130,tab1^);
     cls(0);
     outtextxy(125,90,1,1,7,'PROGRAM',false);
     pobierz_ekran_do(40,70,270,130,tab2^);
     pokazgrafike2;delay(500);
     rysuj_ekran(40,70,270,130,tab2^,0,false);
     repeat
           draw_random(40,70,270,130,tab1^,0,false);
           pokazgrafike2;
     until keypressed;

     done;
end.