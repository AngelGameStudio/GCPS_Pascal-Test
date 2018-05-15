unit main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Tools;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    procedure Add(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Jian(Sender: TObject);
    procedure Chen(Sender: TObject);
    procedure Chu(Sender: TObject);
  private
    e:integer;
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

procedure TForm1.Button5Click(Sender: TObject);
begin
  Form2.Show;
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
begin
  e:=2;
  if Form2.Hex.Checked then Val(Form2.Edit1.Text,e);
  Val(Edit1.Text,c);
  Val(Edit2.Text,d);
  if d = 0 then begin
  Showmessage('除数为0!');
  exit;
  end;
  Str(c/d:0:e,s);
  if Form2.Del.Checked then begin
  while s[Length(s)] = '0' do begin
    delete(s,length(s),1);
  end;
end;
  Edit3.Text:=s;
end;

end.

