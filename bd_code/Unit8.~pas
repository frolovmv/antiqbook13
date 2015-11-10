unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DB, DBTables, Buttons;

type
  TForm8 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    DBGrid1: TDBGrid;
    Query1: TQuery;
    DataSource1: TDataSource;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label5: TLabel;
    Edit3: TEdit;
    Label3: TLabel;
    otdSelect: TComboBox;
    procedure FormActivate(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

procedure TForm8.FormActivate(Sender: TObject);
begin
Edit3.SetFocus;
Query1.Close;
DataSource1.DataSet:=Query1;
end;

procedure TForm8.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
//
end;

procedure TForm8.BitBtn2Click(Sender: TObject);
begin
Form8.Close;
end;

procedure TForm8.BitBtn1Click(Sender: TObject);
var a,b, query:string;

begin

case otdSelect.ItemIndex of
0:  query :=' and notd =2 and now=1';
1:  query :=' and notd =2 and now=2';
2:  query :=' and notd =2 and now=3';
3:  query :=' and notd =3';
4:  query :=' and notd =5';
end  ;
a:=Edit1.Text;
b:=Edit2.Text;


Query1.Close;
Query1.SQL.Clear;
if(Edit3.Text<>'') then begin
Query1.SQL.Add('SELECT Snum,Avtor,Nazvan,Dateizd,Pricepr,Comment,Datepr,Dateprod  FROM ":INTRBASE1:Books"');
Query1.SQL.Add('WHERE ((LOWER(TRIM(Avtor)) LIKE "%"||"'+a+'"||"%") AND(LOWER(TRIM(Nazvan)) LIKE "%"||"'+b+'"||"%")AND Snum= '+Edit3.Text +' AND Prod=0 AND Vozvr=0');
 Query1.SQL.Add(query);
  Query1.SQL.Add(') order by Avtor');
end else
 begin
 Query1.SQL.Add('SELECT Snum,Avtor,Nazvan,Dateizd,Pricepr,Comment,Datepr,Dateprod  FROM ":INTRBASE1:Books"');
Query1.SQL.Add('WHERE ((LOWER(TRIM(Avtor)) LIKE "%"||"'+a+'"||"%") AND(LOWER(TRIM(Nazvan)) LIKE "%"||"'+b+'"||"%") AND  Prod=0 AND Vozvr=0 ');
 Query1.SQL.Add(query);
  Query1.SQL.Add(') order by Avtor');
 end;
Query1.Open;

if Query1.RecordCount=0 then ShowMessage('«аписей по вашим требовани€м не найдено!') else
DataSource1.DataSet:=Query1;

//Edit1.Clear;
//Edit2.Clear;
//Edit3.Clear;

end;

procedure TForm8.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=ord(#13) then Edit2.SetFocus;
end;

procedure TForm8.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=ord(#13) then BitBtn1.SetFocus;
end;

procedure TForm8.DBGrid1TitleClick(Column: TColumn);
var a,b, query:string;
begin
case otdSelect.ItemIndex of
0:  query :=' and notd =2 and now=1';
1:  query :=' and notd =2 and now=2';
2:  query :=' and notd =2 and now=3';
3:  query :=' and notd =3';
4:  query :=' and notd =5';
end  ;
a:=Edit1.Text;
b:=Edit2.Text;


Query1.Close;
Query1.SQL.Clear;
if(Edit3.Text<>'') then begin
Query1.SQL.Add('SELECT Snum,Avtor,Nazvan,Dateizd,Pricepr,Comment,Datepr,Dateprod  FROM ":INTRBASE1:Books"');
Query1.SQL.Add('WHERE ((LOWER(TRIM(Avtor)) LIKE "%"||"'+a+'"||"%") AND(LOWER(TRIM(Nazvan)) LIKE "%"||"'+b+'"||"%")AND Snum= '+Edit3.Text +'AND Prod=0 AND Vozvr=0');
 Query1.SQL.Add(query);
  Query1.SQL.Add(') order by ' + Column.FieldName);
end else
 begin
 Query1.SQL.Add('SELECT Snum,Avtor,Nazvan,Dateizd,Pricepr,Comment,Datepr,Dateprod  FROM ":INTRBASE1:Books"');
Query1.SQL.Add('WHERE ((LOWER(TRIM(Avtor)) LIKE "%"||"'+a+'"||"%") AND(LOWER(TRIM(Nazvan)) LIKE "%"||"'+b+'"||"%")AND  Prod=0 AND Vozvr=0 ');
 Query1.SQL.Add(query);
  Query1.SQL.Add(') order by ' + Column.FieldName);
 end;
Query1.Open;

if Query1.RecordCount=0 then ShowMessage('«аписей по вашим требовани€м не найдено!') else
DataSource1.DataSet:=Query1;

//Edit1.Clear;
//Edit2.Clear;
//Edit3.Clear;
end;

end.
