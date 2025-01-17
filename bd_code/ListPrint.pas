unit ListPrint;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DB, Grids, DBGrids, DBTables, RpCon, RpConDS,
  RpConBDE, RpDefine, RpRave;

type
  TForm65 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Query1: TQuery;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    MaskEdit1: TMaskEdit;
    PrnLstPr: TRvProject;
    QueConnLstPr: TRvQueryConnection;
    RvQueConDate: TRvQueryConnection;
    QueDate: TQuery;
    RvQueConListSum: TRvQueryConnection;
    QueListSum: TQuery;
    RvQueConAvtor: TRvQueryConnection;
    QueryAvtor: TQuery;
    procedure FormActivate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form65: TForm65;
  procedure OpenQuery(var Query:TQuery;queryStr:string);


implementation

{$R *.dfm}

procedure OpenQuery(var Query:TQuery;queryStr:string);
begin
Query.SQL.Clear;
Query.SQL.Add(queryStr);
Query.Open;
end;


procedure TForm65.FormActivate(Sender: TObject);
begin
Query1.Close;
Datasource1.DataSet:=Query1;
MaskEdit1.SetFocus;
MaskEdit1.Clear;
end;

//-----------------------------------------------------------------------------------------------------------------------------------
//-----------------------------------------------------------------------------------------------------------------------------------

procedure TForm65.ComboBox1Change(Sender: TObject);
var queryStr,notd:string;
begin

case ComboBox1.ItemIndex of
0:notd:='1';
1:notd:='2';
2:notd:='3';
3:notd:='5';
end;
if StrToInt(notd) = 2 then begin
PrnLstPr.ProjectFile := 'C:\BD_ANTIQ\ListPrint.rav';

queryStr:='SELECT Snum,Avtor,Nazvan,Dateizd,Datepr,Pricepr From Books WHERE Notd='+notd+' AND Datepr="'+MaskEdit1.Text+'"';

 DBGrid1.Columns[0].FieldName := 'snum';
 DBGrid1.Columns[4].FieldName := 'pricepr';
 OpenQuery(Query1,queryStr);
 DataSource1.DataSet:=Query1;

QueDate.SQL.Clear;
QueDate.SQL.Add('Select distinct Datepr from Books where Datepr="'+MaskEdit1.Text+'"');
QueDate.Open;

QueListSum.SQL.Clear;
QueListSum.SQL.Add('SELECT sum(Pricepr) From Books WHERE Notd='+notd+' AND Datepr="'+MaskEdit1.Text+'"');
QueListSum.Open;
     end else if StrToInt(notd) = 5 then begin
        //  ShowMessage('5');
PrnLstPr.ProjectFile := 'C:\BD_ANTIQ\ListPrint4Jew.rav';

queryStr:='SELECT Snum,Avtor,Nazvan,Dateizd,Datepr,Pricepr,jew_mass,jew_probe From Books WHERE Notd='+notd+' AND Datepr="'+MaskEdit1.Text+'"';

 DBGrid1.Columns[0].FieldName := 'snum';
 DBGrid1.Columns[4].FieldName := 'pricepr';
 OpenQuery(Query1,queryStr);
 DataSource1.DataSet:=Query1;

QueDate.SQL.Clear;
QueDate.SQL.Add('Select distinct Datepr from Books where Datepr="'+MaskEdit1.Text+'"');
QueDate.Open;

QueListSum.SQL.Clear;
QueListSum.SQL.Add('SELECT sum(Pricepr) From Books WHERE Notd='+notd+' AND Datepr="'+MaskEdit1.Text+'"');
QueListSum.Open;
     end  else if StrToInt(notd) = 3 then begin

PrnLstPr.ProjectFile := 'C:\BD_ANTIQ\ListPrint4Antiq.rav';

queryStr:='SELECT Snum,Avtor,Nazvan,Dateizd,Datepr,Pricepr From Books WHERE Notd='+notd+' AND Datepr="'+MaskEdit1.Text+'"';

 DBGrid1.Columns[0].FieldName := 'snum';
 DBGrid1.Columns[4].FieldName := 'pricepr';
 OpenQuery(Query1,queryStr);
 DataSource1.DataSet:=Query1;

QueDate.SQL.Clear;
QueDate.SQL.Add('Select distinct Datepr from Books where Datepr="'+MaskEdit1.Text+'"');
QueDate.Open;

QueListSum.SQL.Clear;
QueListSum.SQL.Add('SELECT sum(Pricepr) From Books WHERE Notd='+notd+' AND Datepr="'+MaskEdit1.Text+'"');
QueListSum.Open;
     end else begin
     PrnLstPr.ProjectFile := 'C:\BD_ANTIQ\ListPrint4Otkr.rav';
queryStr:='SELECT o.id oid,sum(Pricepr*Kol) ag From Books b, Onumber o  WHERE Notd='+notd+' AND Datepr="'+MaskEdit1.Text+'" and o.id = b.oid group by o.id';

 OpenQuery(Query1,queryStr);
 DBGrid1.Columns[0].FieldName := 'oid';
 DBGrid1.Columns[4].FieldName := 'ag';

 DataSource1.DataSet:=Query1;

QueDate.SQL.Clear;
QueDate.SQL.Add('Select distinct Datepr from Books where Datepr="'+MaskEdit1.Text+'"');
QueDate.Open;

QueListSum.SQL.Clear;
QueListSum.SQL.Add('SELECT sum(o.price) From Onumber o WHERE o.id in (select distinct oid from Books WHERE Notd='+notd+' AND Datepr="'+MaskEdit1.Text+'")');
QueListSum.Open;

     end;

end;


//-----------------------------------------------------------------------------------------------------------------------------------
//-----------------------------------------------------------------------------------------------------------------------------------


procedure TForm65.Button2Click(Sender: TObject);
begin
Form65.Close;
end;


//-----------------------------------------------------------------------------------------------------------------------------------
//-----------------------------------------------------------------------------------------------------------------------------------


procedure TForm65.Button1Click(Sender: TObject);
begin
if(MaskEdit1.Text='++.++.++++') then
 begin
  ShowMessage('�� �� ����� ����!!');

 end else begin


if (QueListSum.RecordCount<>0) then
 begin
  PrnLstPr.Open;
  PrnLstPr.Execute;
  PrnLstPr.Close;
 end;

end;
end;

end.
