unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RpCon, RpConDS, RpConBDE, RpDefine, RpRave, StdCtrls, DB,
  DBTables, Grids, DBGrids,DateUtils;

type
  TForm6 = class(TForm)
    DataSource1: TDataSource;
    Query1: TQuery;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    RvPrSecPrn: TRvProject;
    RvQueConSecPrnKngKomm: TRvQueryConnection;
    QueSecPrnKngKomm: TQuery;
    Button4: TButton;
    QueSecPrnOtkr1: TQuery;
    RvQueConSecPrnOtkr1: TRvQueryConnection;
    RvQueConSecPrnOtkr2: TRvQueryConnection;
    QueSecPrnOtkr2: TQuery;
    QuePriceTextSecPrn: TQuery;
    RvQueConPSecPrnrPriceText: TRvQueryConnection;
    QueSecPrn3: TQuery;
    RvQueConSecPrn3: TRvQueryConnection;
    DBGrid1: TDBGrid;
    QueSecPrnKngJew: TRvQueryConnection;
    QueSecPrnJew: TQuery;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;
function exist(snum:integer;Data:TTable):integer;

implementation
uses ListPrint, Unit22,Unit20;

{$R *.dfm}

function exist(snum:integer;Data:TTable):integer;
var i:integer; label a;
 begin
  Data.Active:=True;
  a:
  Data.Last;
  for i:=1 to Data.RecordCount do
  if(Data.FieldByName('snum').AsInteger=snum)
   then begin exist:= snum;exit; end else
   Data.Prior;
   snum:=snum-1;
   goto a;
   Data.Active:=False;

 end;

procedure TForm6.Button1Click(Sender: TObject);
var
str:string;
begin
str:='SELECT Snum,Datepr,Avtor,Nazvan,Dateizd,Pricepr FROM Books WHERE Datepr >="'+DateToStr(IncDay(Today,-10))+'"';

OpenQuery(Query1,str);
 DataSource1.DataSet:=Query1;

end;

procedure TForm6.Button2Click(Sender: TObject);
var
str:string;
begin
str:='SELECT Snum,Datepr,Avtor,Nazvan,Dateizd,Pricepr FROM Books';

OpenQuery(Query1,str);
 DataSource1.DataSet:=Query1;

end;


procedure TForm6.FormActivate(Sender: TObject);
begin
Query1.Close;
DataSource1.DataSet:=Query1;;
end;

procedure TForm6.Button4Click(Sender: TObject);
begin
Form6.Close;
end;

//-----------------------------------------------------------------------------------------------------------------------------------
//-----------------------------------------------------------------------------------------------------------------------------------

procedure TForm6.Button3Click(Sender: TObject);
var sdatstr,snu,sn:string;
begin   //====//


//=======================================================//

if( (StrToInt(Query1.FieldValues['snum'])>=2000000) and (StrToInt(Query1.FieldValues['snum'])<5000000))
 then
  begin

   QueSecPrnKngKomm.SQL.Clear;
   QueSecPrnKngKomm.SQL.Add('SELECT a.Snum,b.Fam,b.Adr,b.Pasp,a.Avtor,a.Nazvan,a.Dateizd,a.Pricepr,a.Pricepr-a.Procent*a.Pricepr*0.01,a.Datepr,b.Tel,a.Procent,a.comment');
   QueSecPrnKngKomm.SQL.Add('FROM  Books  a, Sdat b');
   QueSecPrnKngKomm.SQL.Add('WHERE a.Snum=b.Snum AND a.Snum=');
   QueSecPrnKngKomm.SQL.Add(Query1.FieldValues['snum']);

   RvPrSecPrn.ProjectFile:='C:\BD_ANTIQ\KomissiaPrint_.rav';
   RvPrSecPrn.Open;
   RvPrSecPrn.Open;
   RvPrSecPrn.Execute;
   RvPrSecPrn.Close;


  end else
  if( StrToInt(Query1.FieldValues['snum'])>=5000000 )
 then
  begin
  // JEWELLERS
        //ShowMessage(Query1.FieldValues['snum']);
   QueSecPrnJew.SQL.Clear;
   QueSecPrnJew.SQL.Add('SELECT a.Snum,b.Fam,b.Adr,b.Pasp,a.Avtor,a.Nazvan,a.Dateizd,a.Pricepr,a.Pricepr-a.Procent*a.Pricepr*0.01,a.Datepr,b.Tel,a.Procent,a.comment,a.jew_mass,a.jew_probe');
   QueSecPrnJew.SQL.Add('FROM  Books  a, Sdat b');
   QueSecPrnJew.SQL.Add('WHERE a.Snum=b.Snum AND a.Snum=');
   QueSecPrnJew.SQL.Add(Query1.FieldValues['snum']);

   RvPrSecPrn.ProjectFile:='C:\BD_ANTIQ\JewellerRecieptReport_.rav';
   RvPrSecPrn.Open;
   RvPrSecPrn.Open;
   RvPrSecPrn.Execute;
   RvPrSecPrn.Close;


  end else

  if((StrToInt(Query1.FieldValues['snum'])<2000000))
    then
     begin
     //OTKRITKI

      QueSecPrnOtkr1.SQL.Clear;
      QueSecPrnOtkr1.SQL.Add('SELECT Datepr,Nazvan,Pricepr,Kol,Kol*Pricepr FROM Books');
      QueSecPrnOtkr1.SQL.Add('WHERE Otkr=(SELECT DISTINCT otkr FROM Books WHERE Snum='+IntToStr(StrToInt(Query1.FieldValues['snum']))+')');



QueSecPrnOtkr2.SQL.Clear;
QueSecPrnOtkr2.SQL.Add('SELECT DISTINCT Sum(Kol),Sum(Kol*Pricepr ),Sum(Kol*Pricepr )-(Sum(Kol*Pricepr )*Procent*0.01) FROM Books');
QueSecPrnOtkr2.SQL.Add('WHERE Otkr=(SELECT DISTINCT otkr FROM Books WHERE Snum='+IntToStr(StrToInt(Query1.FieldValues['snum']))+')  group by Procent');

QueSecPrn3.SQL.Clear;
QueSecPrn3.SQL.Add('SELECT DISTINCT a.Snum,a.Fam,a.Adr,a.pasp FROM Sdat a ');
QueSecPrn3.SQL.Add('WHERE a.Snum=(SELECT DISTINCT b.Otkr FROM Books b WHERE b.Snum='+IntToStr(StrToInt(Query1.FieldValues['snum']))+')');



Form22.ShowModal;



   QuePriceTextSecPrn.SQL.Clear;
   QuePriceTextSecPrn.SQL.Add('SELECT * FROM PriceStr');

   RvPrSecPrn.ProjectFile:='C:\BD_ANTIQ\SecPrnPrnT2.rav';
   RvPrSecPrn.Open;
   RvPrSecPrn.Execute;
   RvPrSecPrn.Close;

   QuePriceTextSecPrn.SQL.Clear;
   QuePriceTextSecPrn.SQL.Add('DELETE FROM PriceStr');
   QuePriceTextSecPrn.ExecSQL;




end;



end; //===//
end.
