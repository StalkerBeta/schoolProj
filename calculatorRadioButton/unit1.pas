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
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
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
begin
  if(RadioButton1.checked)then
  begin
  Edit3.Text:=inttostr(strtoint(Edit1.text)+strtoint(Edit2.text));
  end
  else
  begin
    if(RadioButton2.checked)then
    begin
     Edit3.Text:=inttostr(strtoint(Edit1.text)-strtoint(Edit2.text));
    end
    else
    begin
    Edit3.Text:=inttostr(strtoint(Edit1.text)*strtoint(Edit2.text));
    end;
  end;
end;

end.

