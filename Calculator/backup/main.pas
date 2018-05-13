unit main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    procedure Add(Sender: TObject);
    procedure Jian(Sender: TObject);
    procedure Chen(Sender: TObject);
    procedure Chu(Sender: TObject);
  private

  public
    a,b:integer;
    c,d:real;
    s:string;
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Add(Sender: TObject);
begin
  Val(Edit1.Text,a);
  Val(Edit2.Text,b);
  Str(a+b,s);
  Edit3.Text:=s;
end;
procedure TForm1.Jian(Sender: TObject);
begin
  Val(Edit1.Text,a);
  Val(Edit2.Text,b);
  Str(a-b,s);
  Edit3.Text:=s;
end;
procedure TForm1.Chen(Sender: TObject);
begin
  Val(Edit1.Text,a);
  Val(Edit2.Text,b);
  Str(a*b,s);
  Edit3.Text:=s;
end;
procedure TForm1.Chu(Sender: TObject);
var
  e:integer;
begin
  e:=8;
  Val(Edit1.Text,c);
  Val(Edit2.Text,d);
  Str(c/d:0:e,s);
  Edit3.Text:=s;
end;

end.

