unit Unit21;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables, Grids, DBGrids;

type
  TForm21 = class(TForm)
    Edit4: TEdit;
    Label1: TLabel;
    Label5: TLabel;
    Button1: TButton;
    DBGrid1: TDBGrid;
    QueryBActivate: TQuery;
    DataSource1: TDataSource;
    Query2: TQuery;
    Edit3: TEdit;
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form21: TForm21;

implementation
uses OtkritkiOtd;
{$R *.dfm}

procedure TForm21.FormActivate(Sender: TObject);
begin
Edit4.Clear;
Edit3.Clear;
Edit3.SetFocus;
//ShowMessage('LINE 1');
            
QueryBActivate.SQL.Clear;
QueryBActivate.SQL.Add('SELECT Sum(KOL*PRICEPR ),Sum(KOL*PRICEPR )-(Sum(KOL*PRICEPR )*PROCENT*0.01) FROM Books group by PROCENT');
QueryBActivate.Open;

if(QueryBActivate.RecordCount=0) then
begin
ShowMessage('��� ������!!');
Form21.Close;
end else begin
  //  ShowMessage('����� �������: '+ IntToStr(QueryBActivate.RecordCount));
       DataSource1.DataSet:=QueryBActivate;
  end;
end;

procedure TForm21.Button1Click(Sender: TObject);
begin
if (MessageDlg('������ ������?',mtConfirmation,[mbYes,mbNo],0)=mrYes)
then begin

if((Edit3.Text='')or(Edit4.Text='')) then
 begin
ShowMessage('������� �����-���� ������ ��� ������, � ��� ���� ������������� �����!!');
end else
  begin
  Query2.SQL.Clear;
  Query2.SQL.Add('INSERT INTO PRICESTR VALUES("'+Edit3.Text+'","'+Edit4.Text+'")');
  Query2.ExecSQL;

Edit4.Clear;
Edit3.Clear;
Form21.Close;


 end;

  end;

end;

procedure TForm21.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=ord(#13) then
Edit4.SetFocus;
end;

procedure TForm21.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=ord(#13) then
Button1.SetFocus;
end;

procedure TForm21.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=ord(#13) then
Edit4.SetFocus;
end;

end.
