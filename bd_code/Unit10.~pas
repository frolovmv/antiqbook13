unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Mask, DB, DBTables;

type
  TForm10 = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    Label3: TLabel;
    Edit2: TEdit;
    Query1: TQuery;
    DataSource1: TDataSource;
    MaskEdit1: TMaskEdit;
    Label4: TLabel;
    Label5: TLabel;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure MaskEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation
uses DateUtils;

{$R *.dfm}

procedure TForm10.Button1Click(Sender: TObject);
begin
Form10.Close;
end;

procedure TForm10.FormActivate(Sender: TObject);
begin
Edit2.Text:=DateToStr(Today);
MaskEdit1.SetFocus;
end;

procedure TForm10.Button2Click(Sender: TObject);
begin

 if MessageDlg('«¿Õ≈—“» “Œ¬¿– ¬ —œ»—Œ  ¬Œ«¬–¿Ÿ≈ÕÕ€’',mtConfirmation,[mbYes,mbNo],0)=mrYes
 then begin
 Query1.SQL.Clear;
Query1.SQL.Add('SELECT Snum,Nazvan,Avtor,Pricepr');
Query1.SQL.Add('FROM ":INTRBASE1:Books" WHERE  Vozvr=0 and Prod=0 and Snum="'+MaskEdit1.EditText+'" ');
Query1.Open;
if(Query1.RecordCount=0)then begin ShowMessage('»«¬»Õ»“≈, ›“Œ“ “Œ¬¿– ”∆≈ œ–Œƒ¿Õ »À» ¬Œ«¬–¿Ÿ≈Õ!!');MaskEdit1.Clear;
MaskEdit1.SetFocus; end else begin
 Query1.SQL.Clear;
 Query1.SQL.Add('UPDATE ":INTRBASE1:Books" SET Vozvr=1,Dateprod="'+DateToStr(Today)+'" WHERE Prod=0 and Vozvr=0 and Snum='+MaskEdit1.Text);
 Query1.ExecSQL;
 ShowMessage('Œœ≈–¿÷»ﬂ «¿¬≈–ÿ»À¿—‹ ”—œ≈ÿÕŒ!!');  end;

      end;
MaskEdit1.Clear;
MaskEdit1.SetFocus;

 end;



procedure TForm10.MaskEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var x:string;
begin
if Key=ord(#13) then
begin
x:=MaskEdit1.EditText;

Query1.SQL.Clear;
Query1.SQL.Add('SELECT Snum,Nazvan,Avtor,Pricepr');
Query1.SQL.Add('FROM ":INTRBASE1:Books" WHERE  Vozvr=0 and Prod=0 and Snum="'+x+'" ');
Query1.Open;
if(Query1.RecordCount=0)then begin ShowMessage('»«¬»Õ»“≈, ›“Œ“ “Œ¬¿– ”∆≈ œ–Œƒ¿Õ »À» ¬Œ«¬–¿Ÿ≈Õ!!');MaskEdit1.Clear;
MaskEdit1.SetFocus; end else
DataSource1.DataSet:=Query1;
Button2.SetFocus;

end;
end;

procedure TForm10.Button3Click(Sender: TObject);

var x:string;
begin


x:=MaskEdit1.EditText;
Query1.SQL.Clear;
Query1.SQL.Add('SELECT Snum,Nazvan,Avtor,Dateizd,Datepr,Pricepr');
Query1.SQL.Add('FROM ":INTRBASE1:Books" WHERE Vozvr=0 and Prod=0 and Snum="'+x+'" ');
Query1.Open;
if(Query1.RecordCount=0)then begin ShowMessage('»«¬»Õ»“≈, ›“Œ“ “Œ¬¿– ”∆≈ œ–Œƒ¿Õ »À» ¬Œ«¬–¿Ÿ≈Õ!!');MaskEdit1.Clear;
MaskEdit1.SetFocus; end else
DataSource1.DataSet:=Query1;

//Database1.KeepConnection:=False;
Button2.SetFocus;

end;

end.
