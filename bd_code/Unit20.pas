unit Unit20;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables, Grids, DBGrids, Mask, RpDefine, RpRave,
  RpCon, RpConDS, RpConBDE, OtkritkiOtd;

type
  TForm20 = class(TForm)
    DataSource1: TDataSource;
    Query1: TQuery;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label1: TLabel;
    MaskEdit1: TMaskEdit;
    DBGrid: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    jew_probe_text: TEdit;
    Edit8: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Query2: TQuery;
    RvErrPrnProj: TRvProject;
    Query3: TQuery;
    RvErrPrnQueConn: TRvQueryConnection;
    QueErrPrn: TQuery;
    RvErrPrnQueConn2: TRvQueryConnection;
    RvErrPrnQueConn3: TRvQueryConnection;
    RvErrPrnQueConn4: TRvQueryConnection;
    Que2: TQuery;
    Que3: TQuery;
    Que4: TQuery;
    QueErrText: TQuery;
    RvQueErrTextCon: TRvQueryConnection;
    nextButton: TButton;
    tmpSave: TButton;
    RvErrPrnJew: TRvQueryConnection;
    QueErrPrnJew: TQuery;
    jew_mass_text: TEdit;
    Edit7: TEdit;
    jew_mass_lab: TLabel;
    jew_probe_lab: TLabel;
    newProcentEdit: TEdit;
    Label10: TLabel;
    procedure Button4Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure Button2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure Edit7KeyPress(Sender: TObject; var Key: Char);
    procedure Edit8KeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure jew_probe_textKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit8KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button3Click(Sender: TObject);
    procedure nextButtonClick(Sender: TObject);
    procedure DBGridCellClick(Column: TColumn);
    procedure tmpSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form20: TForm20;

implementation
uses Unit21,Unit6, Unit22;

{$R *.dfm}
procedure getInterval(snum:integer;var res:array of integer;var sdat:integer;tab:TTable);
var i,bnum,tsnum:integer;
begin
  tab.Open;
  tab.Last;

  for i:=0 to tab.RecordCount do
   begin
    tsnum:=StrToInt(tab.FieldValues['snum']);

    if(tsnum=snum) then break;

    tab.Prior;
   end;    




  tab.Close;
 end;

procedure TForm20.Button4Click(Sender: TObject);
begin
Form20.Close;
end;

procedure TForm20.FormActivate(Sender: TObject);
var
i:integer;
begin
MaskEdit1.SetFocus;
Query1.Close;
DataSource1.DataSet:=Query1;
MaskEdit1.Clear;
Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
Edit4.Clear;
Edit5.Clear;
Edit6.Clear;
Edit7.Clear;
Edit8.Clear;
newProcentEdit.Clear;
nextButton.Visible:=false;
tmpSave.Visible:=false;
end;

procedure TForm20.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
//if Key=ord(#13) then
// Button2.SetFocus;
end;

procedure TForm20.Button2KeyPress(Sender: TObject; var Key: Char);
begin
//if Key=ord(#13) then Edit1.SetFocus;
end;

procedure TForm20.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
//if Key=ord(#13) then Edit2.SetFocus;
end;

procedure TForm20.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
//if Key=ord(#13) then Edit3.SetFocus;
end;

procedure TForm20.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
//if Key=ord(#13) then Edit4.SetFocus;
end;

procedure TForm20.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
//if Key=ord(#13) then Edit5.SetFocus;
end;

procedure TForm20.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
//if Key=ord(#13) then Edit6.SetFocus;
end;

procedure TForm20.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
//if Key=ord(#13) then Edit7.SetFocus;
end;

procedure TForm20.Edit7KeyPress(Sender: TObject; var Key: Char);
begin
//if Key=ord(#13) then Edit8.SetFocus;
end;

procedure TForm20.Edit8KeyPress(Sender: TObject; var Key: Char);
begin
///if Key=ord(#13) then Button3.SetFocus;
end;



procedure TForm20.Button2Click(Sender: TObject);
var
inf,sup:integer;
begin
if(MaskEdit1.Text='') then
 begin
   ShowMessage('������� ����� ���������!!');
   Abort;
 end;


 if((StrToInt(MaskEdit1.Text)<2000000)) then
    begin
    // OTKRITKI
    nextButton.Visible:=true;
tmpsave.Visible :=true;
jew_mass_lab.Visible:=false;
jew_mass_text.Visible:=false;
jew_probe_lab.Visible:=false;
jew_probe_text.Visible:=false;

Query1.SQL.Clear;
Query1.SQL.Add('SELECT a.Snum,a.Avtor,a.Nazvan,a.Dateizd,a.Comment,a.Pricepr,a.Procent,b.Fam,b.Pasp,b.Adr');
Query1.SQL.Add('FROM Books a,Sdat b WHERE a.Prod=0 AND a.oid=b.oid AND a.Vozvr=0 AND a.oid='+ MaskEdit1.Text);
Query1.Open;

//if(Query1.RecordCount>1) then
//begin ShowMessage('������!!! ����� �����!!');Maskedit1.Clear;MaskEdit1.SetFocus;
//end else


if(Query1.RecordCount=0) then
  begin
    ShowMessage('� ���������, ������ � ����� ������� �� ����������, �������� �� ��� ������ ��� ���������!!!');
     Maskedit1.Clear;
     MaskEdit1.SetFocus;
  end else
 begin
  DataSource1.DataSet:=Query1;




  Edit1.Enabled:=True;
  Edit2.Enabled:=True;
  Edit3.Enabled:=True;
  Edit4.Enabled:=True;
  Edit5.Enabled:=True;
  Edit6.Enabled:=True;
  Edit7.Enabled:=True;
  Edit8.Enabled:=True;
  newProcentEdit.Enabled:=True;

  Edit1.SetFocus;
  Query1.First;

  if(Query1.FieldValues['Avtor']<>null)then Edit1.Text:=Query1.FieldValues['Avtor'];
  if(Query1.FieldValues['Nazvan']<>null)then Edit2.Text:=Query1.FieldValues['Nazvan'];
  if(Query1.FieldValues['Dateizd']<>null)then Edit3.Text:=Query1.FieldValues['Dateizd'];
  if(Query1.FieldValues['Comment']<>null)then Edit4.Text:=Query1.FieldValues['Comment'];
  if(Query1.FieldValues['Pricepr']<>null)then Edit5.Text:=Query1.FieldValues['Pricepr'];
  if(Query1.FieldValues['Fam']<>null)then Edit6.Text:=Query1.FieldValues['Fam'];
  if(Query1.FieldValues['Pasp']<>null)then Edit7.Text:=Query1.FieldValues['Pasp'];
  if(Query1.FieldValues['Adr']<>null)then Edit8.Text:=Query1.FieldValues['Adr'];
  if(Query1.FieldValues['Procent']<>null)then newProcentEdit.Text:=Query1.FieldValues['Procent'];

  ShowMessage('����������, ��������� ������������ �������� � ������� ������ "�������� ����� ���������"');
    end;

     end
 else   if((StrToInt(MaskEdit1.Text)>=5000000)) then
    begin
    // JEWELLERS
          nextButton.Visible:=false;
tmpsave.Visible :=false;
jew_mass_lab.Visible:=true;
jew_mass_text.Visible:=true;
jew_probe_lab.Visible:=true;
jew_probe_text.Visible:=true;

Query1.SQL.Clear;
Query1.SQL.Add('SELECT distinct(a.Snum),a.Avtor,a.Nazvan,a.Dateizd,a.Comment,a.Pricepr,a.Procent,b.Fam,b.Pasp,b.Adr,a.jew_mass,a.jew_probe');
Query1.SQL.Add('FROM Books a,Sdat b WHERE Prod=0 AND a.snum=b.snum AND Vozvr=0 AND a.snum='+ MaskEdit1.Text);
Query1.Open;

if(Query1.RecordCount>1) then
begin ShowMessage('������!!! ����� �����!!');Maskedit1.Clear;MaskEdit1.SetFocus;
end else
if(Query1.RecordCount=0) then
  begin
    ShowMessage('� ���������, ������ � ����� ������� �� ����������, �������� �� ��� ������ ��� ���������!');
     Maskedit1.Clear;
     MaskEdit1.SetFocus;
  end else
 begin
  DataSource1.DataSet:=Query1;


  Edit1.Enabled:=True;
  Edit2.Enabled:=True;
  Edit3.Enabled:=True;
  Edit4.Enabled:=True;
  Edit5.Enabled:=True;
  Edit6.Enabled:=True;
  Edit7.Enabled:=True;
  Edit8.Enabled:=True;
  jew_mass_text.Enabled:=True;
  jew_probe_text.Enabled:=True;
  newProcentEdit.Enabled:=True;

  Edit1.SetFocus;
                     //ShowMessage(Query1.FieldValues['jew_mass']);
  if(Query1.FieldValues['Avtor']<>null)then Edit1.Text:=Query1.FieldValues['Avtor'];
  if(Query1.FieldValues['Nazvan']<>null)then Edit2.Text:=Query1.FieldValues['Nazvan'];
  if(Query1.FieldValues['Dateizd']<>null)then Edit3.Text:=Query1.FieldValues['Dateizd'];
  if(Query1.FieldValues['Comment']<>null)then Edit4.Text:=Query1.FieldValues['Comment'];
  if(Query1.FieldValues['Pricepr']<>null)then Edit5.Text:=Query1.FieldValues['Pricepr'];
  if(Query1.FieldValues['Fam']<>null)then Edit6.Text:=Query1.FieldValues['Fam'];
  if(Query1.FieldValues['Pasp']<>null)then Edit7.Text:=Query1.FieldValues['Pasp'];
  if(Query1.FieldValues['Adr']<>null)then Edit8.Text:=Query1.FieldValues['Adr'];
  if(Query1.FieldValues['jew_mass']<>null)then jew_mass_text.Text:=Query1.FieldValues['jew_mass'];
  if(Query1.FieldValues['jew_probe']<>null)then jew_probe_text.Text:=Query1.FieldValues['jew_probe'];
  if(Query1.FieldValues['Procent']<>null)then newProcentEdit.Text:=Query1.FieldValues['Procent'];

  ShowMessage('����������, ��������� ������������ �������� � ������� ������ "�������� ����� ���������"');
 end;
    end

 else
 begin
 // BOOKS
 nextButton.Visible:=false;
tmpsave.Visible :=false;
jew_mass_lab.Visible:=false;
jew_mass_text.Visible:=false;
jew_probe_lab.Visible:=false;
jew_probe_text.Visible:=false;
Query1.SQL.Clear;
Query1.SQL.Add('SELECT a.Snum,a.Avtor,a.Nazvan,a.Dateizd,a.Comment,a.Pricepr,a.Procent,b.Fam,b.Pasp,b.Adr');
Query1.SQL.Add('FROM Books a,Sdat b WHERE Prod=0 AND a.snum=b.snum AND Vozvr=0 AND a.snum='+ MaskEdit1.Text);
Query1.Open;

if(Query1.RecordCount>1) then
begin ShowMessage('������!!! ����� �����!!');Maskedit1.Clear;MaskEdit1.SetFocus;
end else
if(Query1.RecordCount=0) then
  begin
    ShowMessage('� ���������, ������ � ����� ������� �� ����������, �������� �� ��� ������ ��� ���������!');
     Maskedit1.Clear;
     MaskEdit1.SetFocus;
  end else
 begin
  DataSource1.DataSet:=Query1;


  Edit1.Enabled:=True;
  Edit2.Enabled:=True;
  Edit3.Enabled:=True;
  Edit4.Enabled:=True;
  Edit5.Enabled:=True;
  Edit6.Enabled:=True;
  Edit7.Enabled:=True;
  Edit8.Enabled:=True;
  newProcentEdit.Enabled:=True;

  Edit1.SetFocus;

  if(Query1.FieldValues['Avtor']<>null)then Edit1.Text:=Query1.FieldValues['Avtor'];
  if(Query1.FieldValues['Nazvan']<>null)then Edit2.Text:=Query1.FieldValues['Nazvan'];
  if(Query1.FieldValues['Dateizd']<>null)then Edit3.Text:=Query1.FieldValues['Dateizd'];
  if(Query1.FieldValues['Comment']<>null)then Edit4.Text:=Query1.FieldValues['Comment'];
  if(Query1.FieldValues['Pricepr']<>null)then Edit5.Text:=Query1.FieldValues['Pricepr'];
  if(Query1.FieldValues['Fam']<>null)then Edit6.Text:=Query1.FieldValues['Fam'];
  if(Query1.FieldValues['Pasp']<>null)then Edit7.Text:=Query1.FieldValues['Pasp'];
  if(Query1.FieldValues['Adr']<>null)then Edit8.Text:=Query1.FieldValues['Adr'];
  if(Query1.FieldValues['Procent']<>null)then newProcentEdit.Text:=Query1.FieldValues['Procent'];

  ShowMessage('����������, ��������� ������������ �������� � ������� ������ "�������� ����� ���������"');
 end;
 end;

end;

procedure TForm20.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=ord(#13) then Edit2.SetFocus;
end;

procedure TForm20.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=ord(#13) then Edit3.SetFocus;
end;

procedure TForm20.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=ord(#13) then Edit4.SetFocus;
end;

procedure TForm20.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=ord(#13) then Edit5.SetFocus;
end;

procedure TForm20.Edit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=ord(#13) then Edit6.SetFocus;
end;

procedure TForm20.Edit6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=ord(#13) then Edit7.SetFocus;
end;

procedure TForm20.jew_probe_textKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=ord(#13) then newProcentEdit.SetFocus;
end;

procedure TForm20.Edit8KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=ord(#13) then Button3.SetFocus;
end;
//---------------------------------------------------------------------------------

procedure TForm20.Button3Click(Sender: TObject);
var
i,r,inf,sup:integer;
begin


if((Edit2.Text='') or (Edit5.Text='')) then
begin ShowMessage('��� �������� �������� ��� ����!! ����������, ������� ��!!');Edit2.SetFocus;end
else begin
if((StrToInt(Query1.FieldValues['Snum'])<2000000)
) then
begin

nextButton.Visible:=true;
tmpsave.Visible := true;
jew_mass_lab.Visible:=false;
jew_mass_text.Visible:=false;
jew_probe_lab.Visible:=false;
jew_probe_text.Visible:=false;

//PRINT OTKRITKI

Query2.SQL.Clear;
Query2.SQL.Add('UPDATE Books SET Avtor="'+Edit1.Text+'" ,Nazvan="'+Edit2.Text+'",');
Query2.SQL.Add('Dateizd='+Edit3.Text+',Comment="'+Edit4.Text+'",Pricepr='+Edit5.Text
+',PROCENT='+newProcentEdit.Text // mfrolov 24/10/2009
+' WHERE snum='+Query1.fieldByName('Snum').AsString );


Query3.SQL.Clear;
Query3.SQL.Add('UPDATE Sdat s SET Fam="'+Edit6.Text+'",Pasp="'+Edit7.Text+'",Adr="'+Edit8.Text+'"');
Query3.SQL.Add(' WHERE s.oid='+MaskEdit1.Text);


try
Query2.ExecSQL;
Query3.ExecSQL;

except
begin

ShowMessage(' ������!! ��������� �� �����������!! ���������� ��� �������!!');
Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
Edit4.Clear;
Edit5.Clear;
Edit6.Clear;
Edit7.Clear;
Edit8.Clear;
jew_mass_text.Clear;
jew_probe_text.Clear;
raise;
end;
end;


 Query3.Close;
 Query2.Close;

 Query3.SQL.Clear;
 Query3.SQL.Add('SELECT Sum(Kol*Pricepr) ag FROM Books where oid='+ MaskEdit1.Text +  ' group by PROCENT');
 Query3.Open ;
                            
 UpdateONumber('INTRBASE1', Query2, MaskEdit1.Text,Query3.FieldByName('ag').AsString);

ShowMessage('��������� ��������������� �������!! ���� ��������� �� ������������ ������, �� �� ���� ���������� ��������� ��������� ������!');




Que2.SQL.Clear;
Que2.SQL.Add('SELECT Datepr,Nazvan,Pricepr,Kol,Kol*Pricepr,comment FROM Books');
Que2.SQL.Add('WHERE oid='+MaskEdit1.Text);


Que3.SQL.Clear;
Que3.SQL.Add('SELECT Sum(Kol),Sum(Kol*Pricepr) ag,Sum(Kol*Pricepr)-(Sum(Kol*Pricepr)*PROCENT*0.01) FROM Books ');
Que3.SQL.Add('WHERE oid='+MaskEdit1.Text+' group by Procent');

Que4.SQL.Clear;
Que4.SQL.Add('SELECT oid,Fam,Adr,Pasp FROM Sdat a ');
Que4.SQL.Add('WHERE a.oid='+MaskEdit1.Text);


Form22.ShowModal;


QueErrText.SQL.Clear;
QueErrText.SQL.Add('SELECT * FROM PriceStr');

RvErrPrnProj.ProjectFile:='C:\BD_ANTIQ\ErrorPrnT2.rav';
   RvErrPrnProj.Open;
   RvErrPrnProj.Execute;
   RvErrPrnProj.Close;

   QueErrText.SQL.Clear;
QueErrText.SQL.Add('DELETE FROM PriceStr');
QueErrText.ExecSQL;



end else
if((StrToInt(Query1.FieldValues['Snum'])>=5000000)) then begin
// PRINT JEWELLERS

nextButton.Visible:=false;
tmpsave.Visible :=false;
jew_mass_lab.Visible:=true;
jew_mass_text.Visible:=true;
jew_probe_lab.Visible:=true;
jew_probe_text.Visible:=true;

Query2.SQL.Clear;
Query2.SQL.Add('UPDATE Books SET Avtor="'+Edit1.Text+'" ,Nazvan="'+Edit2.Text+'",');
Query2.SQL.Add('Dateizd='+Edit3.Text+',Comment="'+Edit4.Text
+'",Pricepr='+Edit5.Text
+',Procent='+newProcentEdit.Text
+',Jew_Mass="'+jew_mass_text.Text+'",Jew_Probe='+jew_probe_text.Text+' WHERE Snum='+MaskEdit1.Text);

Query3.SQL.Clear;
Query3.SQL.Add('UPDATE Sdat SET Fam="'+Edit6.Text+'",Pasp="'+Edit7.Text+'",Adr="'+Edit8.Text+'"');
Query3.SQL.Add('WHERE Snum='+MaskEdit1.Text);


try
Query2.ExecSQL;
Query3.ExecSQL;

except
begin

ShowMessage(' ������!! ��������� �� �����������!! ���������� ��� c������!!');
Form20.Close;
raise;
end;
end;
 ShowMessage('��������� ��������������� �������!! ���� ��������� ������ �� ������������, �� �� ����������� ���� ���������� ��������� ��������� ������!');

   QueErrPrnJew.SQL.Clear;
   QueErrPrnJew.SQL.Add('SELECT distinct(a.Snum),b.Fam,b.Adr,b.Pasp,a.Avtor,a.Nazvan,a.Dateizd,a.Pricepr,a.Pricepr-a.Procent*a.Pricepr*0.01,a.Datepr,b.Tel,a.Procent,a.comment,a.jew_mass,a.jew_probe');
   QueErrPrnJew.SQL.Add('FROM  Books  a, Sdat  b');
   QueErrPrnJew.SQL.Add('WHERE a.Snum=b.Snum AND a.Snum=');
   QueErrPrnJew.SQL.Add(MaskEdit1.Text);

   RvErrPrnProj.ProjectFile:='C:\BD_ANTIQ\JewellerRecieptReport_T3.rav';
   RvErrPrnProj.Open;
   RvErrPrnProj.Execute;
   RvErrPrnProj.Close;

  end

 else
  begin
  // PRINT BOOKS
 nextButton.Visible:=false;
tmpsave.Visible :=false;
jew_mass_lab.Visible:=false;
jew_mass_text.Visible:=false;
jew_probe_lab.Visible:=false;
jew_probe_text.Visible:=false;

Query2.SQL.Clear;
Query2.SQL.Add('UPDATE Books SET Avtor="'+Edit1.Text+'" ,Nazvan="'+Edit2.Text+'",');
Query2.SQL.Add('Dateizd='+Edit3.Text+',Comment="'+Edit4.Text
+'",Pricepr='+Edit5.Text
+',Procent='+newProcentEdit.Text
+' WHERE Snum='+MaskEdit1.Text);

Query3.SQL.Clear;
Query3.SQL.Add('UPDATE Sdat SET Fam="'+Edit6.Text+'",Pasp="'+Edit7.Text+'",Adr="'+Edit8.Text+'"');
Query3.SQL.Add('WHERE Snum='+MaskEdit1.Text);


try
Query2.ExecSQL;
Query3.ExecSQL;

except
begin

ShowMessage(' ������!! ��������� �� �����������!! ���������� ��� c������!!');
Form20.Close;
raise;
end;
end;
 ShowMessage('��������� ��������������� �������!! ���� ��������� ������ �� ������������, �� �� ����������� ���� ���������� ��������� ��������� ������!');

   QueErrPrn.SQL.Clear;
   QueErrPrn.SQL.Add('SELECT a.Snum,b.Fam,b.Adr,b.Pasp,a.Avtor,a.Nazvan,a.Dateizd,a.Pricepr,a.Pricepr-a.Procent*a.Pricepr*0.01,a.Datepr,b.Tel,a.Procent,a.comment');
   QueErrPrn.SQL.Add('FROM  Books  a, Sdat  b');
   QueErrPrn.SQL.Add('WHERE a.Snum=b.Snum AND a.Snum=');
   QueErrPrn.SQL.Add(MaskEdit1.Text);

   RvErrPrnProj.ProjectFile:='C:\BD_ANTIQ\ErrorPrnT1.rav';
   RvErrPrnProj.Open;
   RvErrPrnProj.Execute;
   RvErrPrnProj.Close;

  end;


end;
MaskEdit1.SetFocus;
Query1.Close;
DataSource1.DataSet:=Query1;
MaskEdit1.Clear;
Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
Edit4.Clear;
Edit5.Clear;
Edit6.Clear;
Edit7.Clear;
Edit8.Clear;
jew_mass_text.Clear;
jew_probe_text.Clear;

end;

procedure TForm20.nextButtonClick(Sender: TObject);
begin

      
Query1.Next;
 if(Query1.FieldValues['Avtor']<>null)then Edit1.Text:=Query1.FieldValues['Avtor'];
  if(Query1.FieldValues['Nazvan']<>null)then Edit2.Text:=Query1.FieldValues['Nazvan'];
  if(Query1.FieldValues['Dateizd']<>null)then Edit3.Text:=Query1.FieldValues['Dateizd'];
  if(Query1.FieldValues['Comment']<>null)then Edit4.Text:=Query1.FieldValues['Comment'];
  if(Query1.FieldValues['Pricepr']<>null)then Edit5.Text:=Query1.FieldValues['Pricepr'];
  if(Query1.FieldValues['Fam']<>null)then Edit6.Text:=Query1.FieldValues['Fam'];
  if(Query1.FieldValues['Pasp']<>null)then Edit7.Text:=Query1.FieldValues['Pasp'];
  if(Query1.FieldValues['Adr']<>null)then Edit8.Text:=Query1.FieldValues['Adr'];
end;

procedure TForm20.DBGridCellClick(Column: TColumn);
begin
 if(Query1.FieldValues['Avtor']<>null)then Edit1.Text:=Query1.FieldValues['Avtor'];
  if(Query1.FieldValues['Nazvan']<>null)then Edit2.Text:=Query1.FieldValues['Nazvan'];
  if(Query1.FieldValues['Dateizd']<>null)then Edit3.Text:=Query1.FieldValues['Dateizd'];
  if(Query1.FieldValues['Comment']<>null)then Edit4.Text:=Query1.FieldValues['Comment'];
  if(Query1.FieldValues['Pricepr']<>null)then Edit5.Text:=Query1.FieldValues['Pricepr'];
  if(Query1.FieldValues['Fam']<>null)then Edit6.Text:=Query1.FieldValues['Fam'];
  if(Query1.FieldValues['Pasp']<>null)then Edit7.Text:=Query1.FieldValues['Pasp'];
  if(Query1.FieldValues['Adr']<>null)then Edit8.Text:=Query1.FieldValues['Adr'];
  if(Query1.FieldValues['Procent']<>null)then newProcentEdit.Text:=Query1.FieldValues['Procent'];
end;

procedure TForm20.tmpSaveClick(Sender: TObject);
begin
Query2.SQL.Clear;
Query2.SQL.Add('UPDATE Books SET Avtor="'+Edit1.Text+'" ,Nazvan="'+Edit2.Text+'",');
Query2.SQL.Add('Dateizd='+Edit3.Text+',Comment="'+Edit4.Text+'",Pricepr='+Edit5.Text
   +',PROCENT='+newProcentEdit.Text // mfrolov 24/10/2009
+' WHERE snum='+Query1.fieldByName('Snum').AsString );
Query3.SQL.Clear;
Query3.SQL.Add('UPDATE Sdat s SET Fam="'+Edit6.Text+'",Pasp="'+Edit7.Text+'",Adr="'+Edit8.Text+'"');
Query3.SQL.Add('WHERE s.oid='+MaskEdit1.Text);

 Query2.ExecSQL;
 Query3.ExecSQL;

//Query3.SQL.Clear;
//Query3.SQL.Add('UPDATE Books s SET PROCENT='+newProcentEdit.Text); // mfrolov 24/10/2009
//Query3.SQL.Add('WHERE s.oid='+MaskEdit1.Text);

 Query3.Close;
 Query2.Close;
 Query3.SQL.Clear;

 Query3.SQL.Add('SELECT Sum(Kol*Pricepr) ag FROM Books where oid='+ MaskEdit1.Text +  ' group by PROCENT');
 Query3.Open ;
//ShowMessage( IntToStr(Query3.FieldList.Count  )+ '[' +'SELECT Sum(Kol*Pricepr) ag FROM Books where oid='+ MaskEdit1.Text +  ' group by PROCENT'+']' );
 UpdateONumber('INTRBASE1', Query2,  MaskEdit1.Text,Query3.FieldByName('ag').AsString);

Query1.Close;

Query1.SQL.Clear;
Query1.SQL.Add('SELECT a.Snum,a.Avtor,a.Nazvan,a.Dateizd,a.Comment,a.Pricepr,a.Procent,b.Fam,b.Pasp,b.Adr');
Query1.SQL.Add('FROM Books a,Sdat b WHERE  a.oid=b.oid  AND a.oid='+ MaskEdit1.Text);
Query1.Open;
         
DataSource1.DataSet:=Query1;

  Edit1.Enabled:=True;
  Edit2.Enabled:=True;
  Edit3.Enabled:=True;
  Edit4.Enabled:=True;
  Edit5.Enabled:=True;
  Edit6.Enabled:=True;
  Edit7.Enabled:=True;
  Edit8.Enabled:=True;
  newProcentEdit.Enabled:=True;

  Edit1.SetFocus;

  if(Query1.FieldValues['Avtor']<>null)then Edit1.Text:=Query1.FieldValues['Avtor'];
  if(Query1.FieldValues['Nazvan']<>null)then Edit2.Text:=Query1.FieldValues['Nazvan'];
  if(Query1.FieldValues['Dateizd']<>null)then Edit3.Text:=Query1.FieldValues['Dateizd'];
  if(Query1.FieldValues['Comment']<>null)then Edit4.Text:=Query1.FieldValues['Comment'];
  if(Query1.FieldValues['Pricepr']<>null)then Edit5.Text:=Query1.FieldValues['Pricepr'];
  if(Query1.FieldValues['Fam']<>null)then Edit6.Text:=Query1.FieldValues['Fam'];
  if(Query1.FieldValues['Pasp']<>null)then Edit7.Text:=Query1.FieldValues['Pasp'];
  if(Query1.FieldValues['Adr']<>null)then Edit8.Text:=Query1.FieldValues['Adr'];
  if(Query1.FieldValues['Procent']<>null)then Edit8.Text:=Query1.FieldValues['Procent'];


end;
   
end.
