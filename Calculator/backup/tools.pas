unit Tools;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls, EditBtn;

type

  { TForm2 }

  TForm2 = class(TForm)
    Edit2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    NHex: TCheckBox;
    Edit1: TEdit;
    Hex: TCheckBox;
    Del: TCheckBox;
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    Timer1: TTimer;
    procedure Update(Sender: TObject);
  private

  public

  end;

var
  Form2: TForm2;

implementation

{$R *.lfm}

{ TForm2 }

procedure TForm2.Update(Sender: TObject);
begin
  Label2.Caption:=TForm1.s;
  Label3.Caption:=TForm1.d;
end;

end.

