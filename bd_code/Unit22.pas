unit Unit22;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables, Grids, DBGrids, Buttons;

type
  TForm22 = class(TForm)
    BitBtn1: TBitBtn;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Query1: TQuery;
    Query2: TQuery;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form22: TForm22;

implementation
 uses Unit20,Unit6;
{$R *.dfm}

procedure TForm22.FormActivate(Sender: TObject);
var snumCase:string;
begin
Edit1.Clear;
Edit2.Clear;
Edit1.SetFocus;



 // if(Form20.MaskEdit1.Text<>'')then snumCase:=Form20.MaskEdit1.Text;
  //if(Form20.Active=True)then snumCase:=Form20.MaskEdit1.Text;
  //if(Form6.Query1.Active=True) then
  //snumCase:=IntToStr(StrToInt(Form6.Query1.FieldValues['snum']));
 // ShowMessage(Form6.Query1.FieldValues['snum']+'==5');
 // if(IntToStr(StrToInt(Form6.Query1.FieldValues['snum']))<>'') then snumCase:=IntToStr(StrToInt(Form6.Query1.FieldValues['snum']));



  //ShowMessage(snumCase+'==snumCase');

  Query1.SQL.Clear;
  Query1.SQL.Add('SELECT Sum(Kol*Pricepr ),Sum(Kol*Pricepr )-(Sum(Kol*Pricepr )*Procent*0.01) FROM Books');
  Query1.SQL.Add('WHERE oid = ' +Form20.MaskEdit1.Text+' group by Procent ');

  Query1.Open;

 if(Query1.RecordCount=0) then
 begin
 ShowMessage('НЕТ ДАННЫХ!!');
 Form22.Close;
 end;
 DataSource1.DataSet:=Query1;


 end;

 //\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\//

procedure TForm22.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=ord(#13)) then Edit2.SetFocus;
end;

procedure TForm22.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=ord(#13)) then BitBtn1.SetFocus;
end;

//------------------------------------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------------------------------------

procedure TForm22.BitBtn1Click(Sender: TObject);
var p:Pointer;
begin

  try



    begin
if (MessageDlg('Ввести данные?',mtConfirmation,[mbYes,mbNo],0)=mrYes)
then
      begin


if((Edit1.Text='')or(Edit2.Text='')) then
 begin
ShowMessage('Введите какие-либо данные для печати, у Вас есть незаполненные графы!!');
end else
  begin
  



  Query2.SQL.Clear;
  Query2.SQL.Add('INSERT INTO PriceStr VALUES("'+Edit1.Text+'","'+Edit2.Text+'")');


  try
  Query2.ExecSQL;
   except
   on e:Exception do ShowMessage(e.Message+'==1');
   end;

   Edit1.Clear;
   Edit2.Clear;
   Form22.Close;

  end;
  end;
end;
      except
      on e:Exception do begin
      ShowMessage(e.Message+'==LAST')
      end;
      end;

end;

end.
