unit main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, SpinEx, Forms, Controls, Graphics, Dialogs,
  StdCtrls, ExtCtrls, MaskEdit, Menus, Tools;

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
    ScrollBar1: TScrollBar;
    procedure Add(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Start(Sender: TObject);
    procedure Jian(Sender: TObject);
    procedure Chen(Sender: TObject);
    procedure Chu(Sender: TObject);
  private
    e:integer;
  public
    a,b:real;
    //c,d:real;
    s:string;
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Add(Sender: TObject);
begin
  if Form2.Hex.Checked then Val(Form2.Edit1.Text,e);
  if Form2.NHex.Checked then Val(Form2.Edit2.Text,e);
  Val(Edit1.Text,a);
  Val(Edit2.Text,b);
  Str(a+b:e:e,s);
  if Form2.Del.Checked then begin
  while (s[Length(s)] = '0') or (s[Length(s)] = '.') do begin
    delete(s,length(s),1);
  end;
  end;
  Edit3.Text:=s;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  Form2.Show;
end;

procedure TForm1.Start(Sender: TObject);
begin
  e:=3;
end;

procedure TForm1.Jian(Sender: TObject);
begin
  if Form2.Hex.Checked then Val(Form2.Edit1.Text,e);
  if Form2.NHex.Checked then Val(Form2.Edit2.Text,e);
  Val(Edit1.Text,a);
  Val(Edit2.Text,b);
  Str(a-b:e:e,s);
  if Form2.Del.Checked then begin
  while (s[Length(s)] = '0') or (s[Length(s)] = '.') do begin
    delete(s,length(s),1);
  end;
  end;
  Edit3.Text:=s;
end;
procedure TForm1.Chen(Sender: TObject);
begin
  if Form2.Hex.Checked then Val(Form2.Edit1.Text,e);
  if Form2.NHex.Checked then Val(Form2.Edit2.Text,e);
  Val(Edit1.Text,a);
  Val(Edit2.Text,b);
  Str(a*b:e:e,s);
  if Form2.Del.Checked then begin
  while (s[Length(s)] = '0') or (s[Length(s)] = '.') do begin
    delete(s,length(s),1);
  end;
  end;
  Edit3.Text:=s;
end;
procedure TForm1.Chu(Sender: TObject);
begin
  if Form2.Hex.Checked then Val(Form2.Edit1.Text,e);
  if Form2.NHex.Checked then Val(Form2.Edit2.Text,e);
  Val(Edit1.Text,a);
  Val(Edit2.Text,b);
  if b = 0 then begin
  Showmessage('除数为0!');
  exit;
  end;
  Str(a/b:e:e,s);
  if Form2.Del.Checked then begin
  while (s[Length(s)] = '0') or (s[Length(s)] = '.') do begin
    delete(s,length(s),1);
  end;
end;
  Edit3.Text:=s;
end;

end.

