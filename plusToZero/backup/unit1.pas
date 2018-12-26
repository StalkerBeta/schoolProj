unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
          var
          str:string;
          sum,i:Integer;
          swich:boolean;
begin
     sum:=0;
     i:=1;
     str := InputBox('Введите число', 'Введите число:', '');
     while true do
     begin
          if(str[i]='0') then
                         break;
          if(i=length(str)) then
          begin
               swich:=false;
               break;
          end;
               sum:=sum+strtoint(str[i]);
               i:=i+1;
         end;
         if(swich=true) then
             showmessage(inttostr(sum))
         else
             showmessage('Оппа, а нулей то нет!');
end;

end.

