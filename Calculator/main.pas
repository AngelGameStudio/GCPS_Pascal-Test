unit main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, SpinEx, Forms, Controls, Graphics, Dialogs,
  StdCtrls, ExtCtrls, MaskEdit, Menus,Tools;

type

  { TForm1 }

  TForm1 = class(TForm)
    Bacak: TButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    CE: TButton;
    Cheng: TButton;
    Debug: TButton;
    Jia: TButton;
    NotCheng: TButton;
    DengYu: TButton;
    NotJia: TButton;
    NumEdit: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Debug1: TEdit;
    Debug2: TEdit;
    Timer1: TTimer;
    procedure Add(Sender: TObject);
    procedure Deng(Sender: TObject);
    procedure SClick(Sender: TObject);
    procedure Back(Sender: TObject);
    procedure Time(Sender: TObject);
    procedure Zero(Sender: TObject);
    procedure BDebug(Sender: TObject);
    procedure Start(Sender: TObject);
    procedure Jian(Sender: TObject);
    procedure Chen(Sender: TObject);
    procedure Chu(Sender: TObject);
  private
    e:integer;
  public
    a,b:real;
    StrPos:integer;
    s,d,snum,sout:string;
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
  snum:=NumEdit.Text;
  sout:=snum;
  StrPos:=Pos('+',snum);
  d:=snum;
  delete(snum,StrPos,Length(snum));
  delete(d,1,StrPos);
  Val(snum,a);
  Val(d,b);
  Str(a+b:e:e,s);
  if Form2.Del.Checked then begin
  while (s[Length(s)] = '0') do begin
    delete(s,length(s),1);
  end;
  if s[Length(s)] = '.' then delete(s,length(s),1);
  end;
  NumEdit.Text:=sout + '=' + s;
end;

procedure TForm1.Deng(Sender: TObject);
begin
  if Pos('+',NumEdit.Text) <> 0 then begin
  Add(nil);
  Exit;
  end;
  if Pos('-',NumEdit.Text) <> 0 then begin
  Jian(nil);
  Exit;
  end;
  if Pos('*',NumEdit.Text) <> 0 then begin
  Chen(nil);
  Exit;
  end;
  if Pos('/',NumEdit.Text) <> 0 then begin
  Chu(nil);
  Exit;
  end;
end;
procedure TForm1.SClick(Sender: TObject);
begin
  if Sender = Jia then NumEdit.Text:=NumEdit.Text+'+';
  if Sender = NotJia then NumEdit.Text:=NumEdit.Text+'-';
  if Sender = Cheng then NumEdit.Text:=NumEdit.Text+'*';
  if Sender = NotCheng then NumEdit.Text:=NumEdit.Text+'/';
end;

procedure TForm1.Back(Sender: TObject);
var
  str:string;
begin
  str:=NumEdit.Text;
  Delete(str,Length(str),1);
  NumEdit.Text:=str;
end;

procedure TForm1.Time(Sender: TObject);
begin
  Debug1.Text:=snum;
  Debug2.Text:=d;
end;

procedure TForm1.Zero(Sender: TObject);
begin
  NumEdit.Text:='';
end;

procedure TForm1.BDebug(Sender: TObject);
begin
  Form2.Show;
end;

procedure TForm1.Start(Sender: TObject);
begin
  e:=8;
end;

procedure TForm1.Jian(Sender: TObject);
begin
  if Form2.Hex.Checked then Val(Form2.Edit1.Text,e);
  if Form2.NHex.Checked then Val(Form2.Edit2.Text,e);
  snum:=NumEdit.Text;
  sout:=snum;
  StrPos:=Pos('-',snum);
  d:=snum;
  delete(snum,StrPos,Length(snum));
  delete(d,1,StrPos);
  Val(snum,a);
  Val(d,b);
  Str(a-b:e:e,s);
  if Form2.Del.Checked then begin
  while (s[Length(s)] = '0') do begin
    delete(s,length(s),1);
  end;
  if s[Length(s)] = '.' then delete(s,length(s),1);
  end;
  NumEdit.Text:=sout + '=' + s;
end;
procedure TForm1.Chen(Sender: TObject);
begin
  if Form2.Hex.Checked then Val(Form2.Edit1.Text,e);
  if Form2.NHex.Checked then Val(Form2.Edit2.Text,e);
  snum:=NumEdit.Text;
  sout:=snum;
  StrPos:=Pos('*',snum);
  d:=snum;
  delete(snum,StrPos,Length(snum));
  delete(d,1,StrPos);
  Val(snum,a);
  Val(d,b);
  Str(a*b:e:e,s);
  if Form2.Del.Checked then begin
  while (s[Length(s)] = '0') do begin
    delete(s,length(s),1);
  end;
  if s[Length(s)] = '.' then delete(s,length(s),1);
  end;
  NumEdit.Text:=sout + '=' + s;
end;
procedure TForm1.Chu(Sender: TObject);
begin
  if Form2.Hex.Checked then Val(Form2.Edit1.Text,e);
  if Form2.NHex.Checked then Val(Form2.Edit2.Text,e);
  snum:=NumEdit.Text;
  sout:=snum;
  StrPos:=Pos('/',snum);
  d:=snum;
  delete(snum,StrPos,Length(snum));
  delete(d,1,StrPos);
  Val(snum,a);
  Val(d,b);
  if b = 0 then begin
  Showmessage('除数为0!');
  exit;
  end;
  Str(a/b:e:e,s);
  if Form2.Del.Checked then begin
  while (s[Length(s)] = '0') do begin
    delete(s,length(s),1);
  end;
  if s[Length(s)] = '.' then delete(s,length(s),1);
  end;
  NumEdit.Text:=sout + '=' + s;;
end;

end.

