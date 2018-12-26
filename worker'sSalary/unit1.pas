unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin

end;

procedure TForm1.Button2Click(Sender: TObject);
  VAR P,S,R,D:Real;
begin
R:=StrToFloat(Edit1.Text);
S:=StrToFloat(Edit2.Text);
P:=StrToFloat(Edit3.Text);
D:=R*S;
If P=R then
Begin
  D:=D*1.1;
Edit4.Text:=FloatToStr(D);
  end
ELSE
Begin
  If R>P then
  Begin
    D:=D*1.3;
Edit4.Text:=FloatToStr(D);
    end
  ELSE
  Begin
    D:=D-(D*0.2);
Edit4.Text:=FloatToStr(D);
    end;
  end;

end;

end.

