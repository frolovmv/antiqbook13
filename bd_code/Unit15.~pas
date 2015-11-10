unit Unit15;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBTables, DB, Grids, DBGrids, ExtCtrls,
  DBCtrls;

type
  TForm15 = class(TForm)
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DataSource1: TDataSource;
    Query1: TQuery;
    Table1: TTable;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBRadioGroup1: TDBRadioGroup;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form15: TForm15;

implementation

{$R *.dfm}

procedure TForm15.BitBtn2Click(Sender: TObject);
begin
Form15.Close;
end;

procedure TForm15.FormActivate(Sender: TObject);
var x:integer;
label a,s;
begin
Query1.SQL.Clear;
Query1.SQL.Add('SELECT Snum,Avtor,Nazvan,Notd,Pricepr,God');
Query1.SQL.Add('FROM ":INTRBASE1:Books" WHERE Prod=False AND Vozvr=0 AND (Notd=2 OR Notd=3) AND NOT God1=0 ');
Query1.Open;
DataSource1.DataSet:=Query1;
end;



procedure TForm15.BitBtn1Click(Sender: TObject);
begin
Query1.Next;
end;

procedure TForm15.BitBtn3Click(Sender: TObject);
var x,i,l:integer;
s:string;
label a;
begin
x:=Query1.FieldByName('Snum').AsInteger;
Table1.Active:=True;
Table1.First;
while not Table1.Eof do
begin
if Table1.FieldByName('Snum').AsInteger=x then
begin
Table1.Edit;
Table1.FieldByName('God').AsBoolean:=False;
Table1.Post;
Query1.SQL.Clear;
Query1.SQL.Add('SELECT Snum,Avtor,Nazvan,Notd,Pricepr,God');
Query1.SQL.Add('FROM ":INTRBASE1:Books" WHERE Prod=0 AND Vozvr=0 AND (Notd=2 OR Notd=3) AND NOT God1=0 ');
Query1.Open;
DataSource1.DataSet:=Query1;

Goto a;
end;

Table1.Next;
end;
a:
Query1.Last;
l:=Query1.FieldByName('Snum').AsInteger;
if Query1.RecordCount<>0 then begin
for i:=1 to Query1.RecordCount do
begin
if (not (Query1.FieldByName('Snum').AsInteger=x) and not(Query1.FieldByName('Snum').AsInteger=l))
 then Query1.Next;
  end;
 Table1.Active:=False;
end;
end;

procedure TForm15.BitBtn4Click(Sender: TObject);
begin
Query1.Prior;
end;

procedure TForm15.BitBtn5Click(Sender: TObject);
begin
 Query1.SQL.Clear;
Query1.SQL.Add('SELECT Snum,Avtor,Nazvan,Notd,Pricepr,God');
Query1.SQL.Add('FROM ":INTRBASE1:Books" WHERE Prod=0 AND Vozvr=0 AND (Notd=2 OR Notd=3) ');
Query1.Open;
DataSource1.DataSet:=Query1;

end;

procedure TForm15.BitBtn6Click(Sender: TObject);
var x,i,l:integer;
s:string;
label a;
begin
x:=Query1.FieldByName('Snum').AsInteger;
Table1.Active:=True;
Table1.First;
while not Table1.Eof do
begin
if Table1.FieldByName('Snum').AsInteger=x then
begin
Table1.Edit;
Table1.FieldByName('God').AsBoolean:=True;
Table1.Post;
Query1.SQL.Clear;
Query1.SQL.Add('SELECT Snum,Avtor,Nazvan,Notd,Pricepr,God');
Query1.SQL.Add('FROM ":INTRBASE1:Books" WHERE Prod=0 AND Vozvr=0 AND (Notd=2 OR Notd=3) AND NOT God1=0 ');
Query1.Open;
DataSource1.DataSet:=Query1;

Goto a;
end;

Table1.Next;
end;
a:
Query1.Last;
l:= Query1.FieldByName('Snum').AsInteger;
if Query1.RecordCount<>0 then begin
for i:=1 to Query1.RecordCount do
begin
if (not (Query1.FieldByName('Snum').AsInteger=x) and not (Query1.FieldByName('Snum').AsInteger=l))
then Query1.Next;
  end;
 Table1.Active:=False;
end;
end;
procedure TForm15.FormClose(Sender: TObject; var Action: TCloseAction);
var x:integer;
label a,s;
begin
Query1.SQL.Clear;
Query1.SQL.Add('SELECT Snum,Avtor,Nazvan,Notd,Pricepr,God');
Query1.SQL.Add('FROM ":INTRBASE1:Books" WHERE Prod=0 AND Vozvr=0 AND (Notd=2 OR Notd=3) AND NOT God1=0 ');
Query1.Open;
Table1.Active:=True;
Query1.First;
While not Query1.Eof do begin
x:=Query1.FieldByName('Snum').AsInteger;

Table1.First;
while not Table1.Eof do

begin


if Table1.FieldByName('Snum').AsInteger=x then
begin
Table1.Edit;
Table1.FieldByName('God1').AsBoolean:=False;
Table1.Post;
Goto a;
end;
Table1.Next;
end;



a:
Query1.Next;
end;

end;

end.
 