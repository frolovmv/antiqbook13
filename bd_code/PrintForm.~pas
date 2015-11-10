unit PrintForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RpCon, RpConDS, RpConBDE, RpDefine, RpRave, DB, DBTables, Grids,
  DBGrids, StdCtrls;

type
  TFPrint = class(TForm)
    Button1: TButton;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Query1: TQuery;
    Database1: TDatabase;
    RvProject1: TRvProject;
    RvQueryConnection1: TRvQueryConnection;
    Edit1: TEdit;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrint: TFPrint;

implementation

uses Unit6;

{$R *.dfm}

procedure TFPrint.Button1Click(Sender: TObject);
begin
//RvProject1.Open;
Query1.SQL.Clear;
Query1.SQL.Add('SELECT a.Snum,b.Fam,b.Adr,b.Pasp,a.Avtor,a.Nazvan,a.Dateizd,a.Pricepr,(a.Procent*a.Pricepr*0.01-a.Pricepr)*(-1),a.Datepr,b.Tel,a.Procent');
Query1.SQL.Add('FROM  ":w:Books.db"  a, ":w:Sdat.db"  b');
Query1.SQL.Add('WHERE a.Snum=B.Snum AND a.Snum='+Edit1.Text);

RvProject1.Open;

RvProject1.Execute;
RvProject1.Close;
end;

end.
