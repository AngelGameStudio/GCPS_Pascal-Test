unit Tools;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls;

type

  { TForm2 }

  TForm2 = class(TForm)
    NHex: TCheckBox;
    Edit1: TEdit;
    Hex: TCheckBox;
    Del: TCheckBox;
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
  private

  public

  end;

var
  Form2: TForm2;

implementation

{$R *.lfm}

end.

