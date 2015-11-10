unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, DBTables, Buttons, Mask;

type
  TForm7 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Edit2: TEdit;
    DataSource1: TDataSource;
    Query1: TQuery;
    BitBtn1: TBitBtn;
    MaskEdit1: TMaskEdit;
    Label3: TLabel;
    Label4: TLabel;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MaskEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation
uses DateUtils;

{$R *.dfm}

procedure TForm7.Button1Click(Sender: TObject);
begin
Form7.Close;
end;

procedure TForm7.Button2Click(Sender: TObject);
var x:string;
begin

x:=MaskEdit1.EditText;
Query1.SQL.Clear;
Query1.SQL.Add('SELECT Snum,Nazvan,Avtor,Datepr,Dateizd,Pricepr');
Query1.SQL.Add('FROM Books WHERE Vozvr=0 and Prod=0 and Snum="'+x+'" ');
Query1.Open;
if(Query1.RecordCount=0)then begin ShowMessage('»«¬»Õ»“≈, ›“Œ“ “Œ¬¿– ”∆≈ œ–Œƒ¿Õ »À» ¬Œ«¬–¿Ÿ≈Õ!!');MaskEdit1.Clear;
MaskEdit1.SetFocus; end else
DataSource1.DataSet:=Query1;

BitBtn1.SetFocus;

end;

procedure TForm7.FormActivate(Sender: TObject);
begin
Edit2.Text:=DateToStr(Today);
MaskEdit1.SetFocus;
end;





procedure TForm7.MaskEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
 var x:string;
begin
if Key=ord(#13) then
begin
x:=MaskEdit1.EditText;


Query1.SQL.Clear;
Query1.SQL.Add('SELECT Snum,Nazvan,Avtor,Pricepr');
Query1.SQL.Add('FROM Books WHERE Prod=0 and Vozvr=0 and Snum="'+x+'" ');
Query1.Open;
if(Query1.RecordCount=0)then begin ShowMessage('»«¬»Õ»“≈, ›“Œ“ “Œ¬¿– ”∆≈ œ–Œƒ¿Õ »À» ¬Œ«¬–¿Ÿ≈Õ!!');
MaskEdit1.Clear;
MaskEdit1.SetFocus; end else
DataSource1.DataSet:=Query1;

BitBtn1.SetFocus;

                      end;

end;
procedure TForm7.BitBtn1Click(Sender: TObject);
begin

 if MessageDlg('«¿Õ≈—“» “Œ¬¿– ¬ —œ»—Œ  œ–Œƒ¿ÕÕ€’',mtConfirmation,[mbYes,mbNo],0)=mrYes
 then begin
 Query1.SQL.Clear;
Query1.SQL.Add('SELECT Snum,Nazvan,Avtor,Pricepr');
Query1.SQL.Add('FROM Books WHERE Prod=0 and Vozvr=0 and Snum="'+MaskEdit1.EditText+'" ');
Query1.Open;
if(Query1.RecordCount=0)then begin ShowMessage('»«¬»Õ»“≈, ›“Œ“ “Œ¬¿– ”∆≈ œ–Œƒ¿Õ »À» ¬Œ«¬–¿Ÿ≈Õ!!');
MaskEdit1.Clear;
MaskEdit1.SetFocus; end else begin
Query1.SQL.Clear;
Query1.SQL.Add('UPDATE Books SET Prod=1,Dateprod="'+DateToStr(Today)+'" WHERE Prod=0 and Vozvr=0 and Snum='+MaskEdit1.Text);
Query1.ExecSQL;
 ShowMessage('Œœ≈–¿÷»ﬂ «¿¬≈–ÿ»À¿—‹ ”—œ≈ÿÕŒ!!');   end;


      end;

MaskEdit1.Clear;
MaskEdit1.SetFocus;


 end;
end.
