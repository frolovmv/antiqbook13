unit SecondPrint;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RpCon, RpConDS, RpConBDE, RpDefine, RpRave, StdCtrls, DB,
  DBTables, Grids, DBGrids,DateUtils;

type
  TForm6 = class(TForm)
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Query1: TQuery;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    RvPrSecPrn: TRvProject;
    RvQueConSecPrn: TRvQueryConnection;
    QueSecPrn: TQuery;
    Database1: TDatabase;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

procedure TForm6.Button1Click(Sender: TObject);
var
str:string;
dt:Date;
begin
str:=queryStr:='SELECT * FROM ":secprn:Books.db" WHERE Datepr >='  ;
try
  Database1.KeepConnection:=True;
 except
                 begin
  ShowMessage('Нет Связи с Сервером!!!');
  raise;
                 end;
 end;
 OpenQuery(Query1,str);
 DataSource1.DataSet:=Query1;

Database1.KeepConnection:=False;
end;
end;

end.
