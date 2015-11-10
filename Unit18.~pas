unit Unit18;

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
    procedure FormActivate(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

procedure TForm18.FormActivate(Sender: TObject);
begin
Edit1.SetFocus;
end;

procedure TForm18.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
//if Key=ord(#13) then Edit2.SetFocus;
end;

procedure TForm8.BitBtn2Click(Sender: TObject);
begin
Form8.Close;
end;

procedure TForm18.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
//if Key=ord(#13) then BitBtn1.SetFocus;
end;

procedure TForm18.BitBtn1Click(Sender: TObject);
var a,b:string;
begin
a:=Edit1.Text;
b:=Edit2.Text;
Query1.Close;
Query1.SQL.Clear;
Query1.SQL.Add('SELECT Snum,Avtor,Nazvan,Dateizd,Pricepr,Comment FROM ":Книги:Books.db"');
Query1.SQL.Add('WHERE ((Avtor LIKE "'+a+'"||"%") AND (Avtor IS NOT NULL)) OR ((Nazvan LIKE "'+b+'"||"%") AND (Nazvan IS NOT NULL))');
Query1.Open;
Edit1.Clear;
Edit2.Clear;
if Query1.RecordCount=0 then ShowMessage('Записей по вашим требованиям не найдено!') else
 Query1.DataSource:=DataSource1;
end;

end.
