unit Unit18;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DB, DBTables, Buttons;

type
  TForm18 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    DBGrid1: TDBGrid;
    Query1: TQuery;
    DataSource1: TDataSource;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    otdSelect: TComboBox;
    procedure FormActivate(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Query1NewRecord(DataSet: TDataSet);
    procedure Query1BeforeScroll(DataSet: TDataSet);
    procedure Query1BeforeOpen(DataSet: TDataSet);
    procedure Query1CalcFields(DataSet: TDataSet);
    procedure Query1BeforeRefresh(DataSet: TDataSet);
    procedure DBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form18: TForm18;

implementation

{$R *.dfm}

procedure TForm18.FormActivate(Sender: TObject);
begin
Query1.Close;
DataSource1.DataSet:=Query1;
Edit3.SetFocus;
end;

procedure TForm18.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
//if Key=ord(#13) then Edit2.SetFocus;
end;

procedure TForm18.BitBtn2Click(Sender: TObject);
begin
Form18.Close;
end;

procedure TForm18.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
//if Key=ord(#13) then BitBtn1.SetFocus;
end;

procedure TForm18.BitBtn1Click(Sender: TObject);
var a,b,query:string;
typ:TFieldType;
bf:TBlobField;
col:TCollection;
colum:TColumn;
i:integer;
begin
case otdSelect.ItemIndex of
0:  query :=' and notd =2 and now=1' ;
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
Query1.SQL.Add('SELECT Snum,Vozvr,Prod,Avtor,Nazvan,Dateizd,Pricepr,Comment,Datepr,Dateprod FROM ":INTRBASE1:Books"');
Query1.SQL.Add('WHERE (  (((LOWER(TRIM(Avtor))) LIKE "%"||"'+a+'"||"%") AND ((LOWER(TRIM(Nazvan))) LIKE "%"||"'+b+'"||"%")) AND Snum='+Edit3.Text+'AND (Prod=1 OR Vozvr=1)  ');
 Query1.SQL.Add(query);
  Query1.SQL.Add(') order by Avtor');
end else
begin
Query1.SQL.Add('SELECT Snum,Vozvr,Prod,Avtor,Nazvan,Dateizd,Pricepr,Comment,Datepr,Dateprod FROM ":INTRBASE1:Books"');
Query1.SQL.Add('WHERE (  (((LOWER(TRIM(Avtor))) LIKE "%"||"'+a+'"||"%") AND ((LOWER(TRIM(Nazvan))) LIKE "%"||"'+b+'"||"%")) AND (Prod=1 OR Vozvr=1)   ');
 Query1.SQL.Add(query);
  Query1.SQL.Add(') order by Avtor');
end;

Query1.Open;



//Edit1.Clear;
//Edit2.Clear;
//Edit3.Clear;

if Query1.RecordCount=0 then ShowMessage('«аписей по вашим требовани€м не найдено!') else
DataSource1.DataSet:=Query1;



end;

procedure TForm18.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=ord(#13) then Edit2.SetFocus;
end;

procedure TForm18.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=ord(#13) then BitBtn1.SetFocus;
end;

procedure TForm18.Query1NewRecord(DataSet: TDataSet);
begin
//ShowMEssage('2');
end;

procedure TForm18.Query1BeforeScroll(DataSet: TDataSet);
begin
//ShowMEssage('Before Scroll');
end;

procedure TForm18.Query1BeforeOpen(DataSet: TDataSet);
begin
//ShowMEssage('Before Open');
end;

procedure TForm18.Query1CalcFields(DataSet: TDataSet);
begin
//ShowMEssage('On Calc Fields');
end;

procedure TForm18.Query1BeforeRefresh(DataSet: TDataSet);
begin
//ShowMEssage('Before Refresh');
end;

procedure TForm18.DBGrid1TitleClick(Column: TColumn);
var a,b,query:string;
typ:TFieldType;
bf:TBlobField;
col:TCollection;
colum:TColumn;
i:integer;
begin
case otdSelect.ItemIndex of
0:  query :=' and notd =2 and now=1' ;
1:  query :=' and notd =2 and now=2';
2:  query :=' and notd =2 and now=3';
3:  query :=' and notd =3';
end  ;
a:=Edit1.Text;
b:=Edit2.Text;


Query1.Close;
Query1.SQL.Clear;
if(Edit3.Text<>'') then begin
Query1.SQL.Add('SELECT Snum,Vozvr,Prod,Avtor,Nazvan,Dateizd,Pricepr,Comment,Datepr,Dateprod FROM ":INTRBASE1:Books"');
Query1.SQL.Add('WHERE (  (((LOWER(TRIM(Avtor))) LIKE "%"||"'+a+'"||"%") AND ((LOWER(TRIM(Nazvan))) LIKE "%"||"'+b+'"||"%")) AND Snum='+Edit3.Text+'AND (Prod=1 OR Vozvr=1)  ');
 Query1.SQL.Add(query);
  Query1.SQL.Add(') order by Avtor');
end else
begin
Query1.SQL.Add('SELECT Snum,Vozvr,Prod,Avtor,Nazvan,Dateizd,Pricepr,Comment,Datepr,Dateprod FROM ":INTRBASE1:Books"');
Query1.SQL.Add('WHERE (  (((LOWER(TRIM(Avtor))) LIKE "%"||"'+a+'"||"%") AND ((LOWER(TRIM(Nazvan))) LIKE "%"||"'+b+'"||"%")) AND (Prod=1 OR Vozvr=1)   ');
 Query1.SQL.Add(query);
  Query1.SQL.Add(') order by ' + Column.FieldName);
end;

Query1.Open;



//Edit1.Clear;
//Edit2.Clear;
//Edit3.Clear;

if Query1.RecordCount=0 then ShowMessage('«аписей по вашим требовани€м не найдено!') else
DataSource1.DataSet:=Query1;

end;

end.
