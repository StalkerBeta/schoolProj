unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
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
var num,num1,num2,num3,num4:Integer;
begin
num:=strToInt(Edit1.text);
num1:=num div 1000;
num2:=(num mod 1000) div 100;
num3:=(num mod 100) div 10;
num4:=num mod 10;
if (num1=num2) or (num1=num3) or (num1=num4) or (num2=num3) or (num2=num3) or (num2=num4) or (num3=num4) then
begin
  showmessage('Число имеет повторяющиеся цифры');
  end;
end;


end.

