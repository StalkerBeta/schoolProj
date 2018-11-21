unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Label1: TLabel;
    Label2: TLabel;
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
  begin
  if(CheckBox1.checked)then
  begin
   Edit3.text:=inttostr(strtoint(Edit1.text)+strtoint(Edit2.text));
  end
  else
  begin
  Edit3.text:='';
   end;
  if(CheckBox2.checked)then
  begin
   Edit4.text:=inttostr(strtoint(Edit1.text)-strtoint(Edit2.text));
  end
  else
  begin
  Edit4.text:='';
  end;
  if(CheckBox3.checked)then
  begin
   Edit5.text:=inttostr(strtoint(Edit1.text)*strtoint(Edit2.text));
  end
  else
  begin
   Edit5.text:='';
  end;
end;

end;

