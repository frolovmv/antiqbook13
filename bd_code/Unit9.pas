unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DB, DBTables, Buttons, Mask;

type
  TForm9 = class(TForm)
    Label1: TLabel;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    Edit2: TEdit;
    MaskEdit1: TMaskEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Query1: TQuery;
    DataSource1: TDataSource;
    procedure FormActivate(Sender: TObject);
    procedure MaskEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

{$R *.dfm}

procedure TForm9.FormActivate(Sender: TObject);
begin
MaskEdit1.SetFocus;
end;


//---------------------------------------------------------------------------//


procedure TForm9.MaskEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=ord(#13) then begin Edit2.SetFocus;


Query1.SQL.Clear;
Query1.SQL.Add('SELECT Snum,Avtor,Nazvan,Pricepr,Comment,Dateizd,Datepr');
Query1.SQL.Add('FROM ":INTRBASE1:Books" WHERE Prod=0 and Vozvr=0 and Snum="'+MaskEdit1.Text+'" ');
Query1.Open;
if(Query1.RecordCount=0)then begin ShowMessage('хгбхмхре, щрнр рнбюп сфе опндюм хкх бнгбпюыем!!');
MaskEdit1.Clear;
MaskEdit1.SetFocus; end else
DataSource1.DataSet:=Query1;

end;
end;


//---------------------------------------------------------------------------//


procedure TForm9.BitBtn2Click(Sender: TObject);
begin


Query1.SQL.Clear;
Query1.SQL.Add('SELECT Snum,Avtor,Nazvan,Pricepr,Comment,Dateizd,Datepr');
Query1.SQL.Add('FROM ":INTRBASE1:Books" WHERE Prod=0 and Vozvr=0 and Snum="'+MaskEdit1.Text+'" ');
Query1.Open;
if(Query1.RecordCount=0)then begin ShowMessage('хгбхмхре, щрнр рнбюп сфе опндюм хкх бнгбпюыем!!');
MaskEdit1.Clear;
MaskEdit1.SetFocus; end else
DataSource1.DataSet:=Query1;

end;


//---------------------------------------------------------------------------//


procedure TForm9.BitBtn1Click(Sender: TObject);
begin


 if MessageDlg('гюохяюрэ мнбсч жемс?',mtConfirmation,[mbYes,mbNo],0)=mrYes
 then begin
 Query1.SQL.Clear;
Query1.SQL.Add('SELECT Snum,Nazvan,Avtor,Pricepr');
Query1.SQL.Add('FROM ":INTRBASE1:Books" WHERE  Vozvr=0 and Prod=0 and Snum="'+MaskEdit1.EditText+'" ');
Query1.Open;
if(Query1.RecordCount=0)then begin ShowMessage('хгбхмхре, щрнр рнбюп сфе опндюм хкх бнгбпюыем!!');MaskEdit1.Clear;
MaskEdit1.SetFocus; end else begin
Query1.SQL.Clear;
Query1.SQL.Add('UPDATE ":INTRBASE1:Books" SET Pricepr='+Edit2.Text);
Query1.SQL.Add('WHERE Prod=0 and Vozvr=0 and Snum='+MaskEdit1.Text);


try
Query1.ExecSQL;

ShowMessage('жемю хглемхкюяэ сяоеьмн!!');
 except
  begin

ShowMessage('мегбеярмюъ ньхайю!! хглемемхъ ме янупюмхкхяэ,бнглнфмн бш ошрюкхяэ оепенжемхрэ сфе опндюммши хкх бнгбпюыеммши рнбюп!');
  end;
 end;
 end;

MaskEdit1.Clear;
Edit2.Clear;
MaskEdit1.SetFocus;
end;

end;


//---------------------------------------------------------------------------//


procedure TForm9.BitBtn3Click(Sender: TObject);
begin
ShowMessage('онфюксиярю, ме гюасдэре нрлерхрэ оепенжемеммше хгдекхъ б юйре н оепенжемйе!!');
Form9.Close;
end;

end.
