unit KomissiaOtd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, DB, DBTables,Knigi, RpCon, RpConDS,
  RpConBDE, RpDefine, RpRave;

type
  TForm13 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit4: TEdit;
    Label5: TLabel;
    Edit5: TEdit;
    Label6: TLabel;
    Edit6: TEdit;
    Label7: TLabel;
    Edit7: TEdit;
    Label8: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Edit8: TEdit;
    Edit9: TEdit;
    Label10: TLabel;
    Edit10: TEdit;
    Label11: TLabel;
    Edit11: TEdit;
    Label12: TLabel;
    Q: TQuery;
    Edit12: TEdit;
    Label13: TLabel;
    Query2: TQuery;
    BitBtn4: TBitBtn;
    Edit13: TEdit;
    Query1: TQuery;
    Edit14: TEdit;
    Label9: TLabel;
    QueryRaveKomiss: TQuery;
    RvProjectKomissia: TRvProject;
    RvQueryConKomiss: TRvQueryConnection;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Edit8KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit10KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit11KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit12KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form13: TForm13;

implementation
uses DateUtils;

{$R *.dfm}

procedure TForm13.BitBtn2Click(Sender: TObject);
begin
Form13.Close;
end;

//-----------------------------------------------------------------------------//


  //—Œ’–¿Õ»“‹  ÕŒœ ¿
procedure TForm13.BitBtn1Click(Sender: TObject);
var f,p,a,t,av,n,u,ko,x1,dp1,d:string;
 c,pc,no,x,x2,x3,i,nw,di,who,snum:integer;
begin

//ÃÂı‡ÌËÁÏ —Œ’–¿Õ»“‹
f:=Edit10.Text;
p:=Edit8.Text;
a:=Edit9.Text;
t:=Edit11.Text;
av:=Edit4.Text;
n:=Edit2.Text;
c:=StrToInt(Edit5.Text);
pc:=StrToInt(Edit6.Text);
nw:=StrToInt(Edit12.Text);
ko:=Edit7.Text;
who:=StrToINt(Edit14.Text);


//=========================================================//—Œ’–¿Õ≈Õ»≈

try
snum:=GetSnum('INTRBASE1',Q,3)+1;

InsertInBooks('INTRBASE1',Q,snum,3,av,n,di,Today,ko,c,pc,nw,1,who,77,-1,'-1','-1');

InsertInSdat('INTRBASE1',Q,snum,t,f,p,a,3,-1);


     except
begin

ShowMessage('Œ¯Ë·Í‡ ‚ Á‡ÌÂÒÂÌËË Á‡ÔËÒË!!');
raise;
end;
     end;
//=================================================//

Edit2.Clear;
Edit4.Clear;
Edit5.Clear;
Edit8.Clear;
Edit9.Clear;
Edit10.Clear;
Edit11.Clear;
Edit7.Clear;

//======================================================//
Edit1.Text:=IntToStr(GetSnum('INTRBASE1',Q,3)+1);
Edit10.SetFocus;
Edit13.Text:=DateToStr(Today);
//======================================================//
//Œ“◊≈“-œ≈◊¿“‹
QueryRaveKomiss.SQL.Clear;
QueryRaveKomiss.SQL.Add('SELECT a.Snum,b.Fam,b.Adr,b.Pasp,a.Avtor,a.Nazvan,a.Dateizd,a.Pricepr,(a.Procent*a.Pricepr*0.01-a.Pricepr)*(-1),a.Datepr,b.Tel,a.Procent,a.comment,a.who');
QueryRaveKomiss.SQL.Add('FROM BOOKS a, SDAT b');
QueryRaveKomiss.SQL.Add('WHERE a.Snum=B.Snum AND a.Snum='+IntToStr(StrToInt(Edit1.Text)-1));
RvProjectKomissia.Open;

RvProjectKomissia.Open;
RvProjectKomissia.Execute;
RvProjectKomissia.Close;

end;

//-----------------------------------------------------------------------------//

 //¿ “»¬¿÷»ﬂ
procedure TForm13.FormActivate(Sender: TObject);
 var x,x2:integer;
x1,d:string;
d1:TDate;
begin
Edit10.Clear;
Edit9.Clear;
Edit8.Clear;
Edit11.Clear;
Edit2.Clear;
Edit4.Clear;
Edit5.Clear;

Edit10.SetFocus;

//=====================================//«¿œŒÀÕﬂ≈Ã ÕŒÃ≈–,ƒ¿“”
Edit1.Text:=IntToStr(GetSnum('INTRBASE1',Q,3)+1);
Edit13.Text:=DateToStr(Today);


end;

//-----------------------------------------------------------------------------//

procedure TForm13.Edit8KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=ord(#13) then
Edit11.SetFocus;
end;

procedure TForm13.Edit9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=ord(#13) then
Edit8.SetFocus;
end;

procedure TForm13.Edit10KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=ord(#13) then
Edit9.SetFocus;
end;

procedure TForm13.Edit11KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=ord(#13) then
Edit2.SetFocus;
end;

procedure TForm13.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=ord(#13) then
Edit12.SetFocus;
end;

procedure TForm13.Edit12KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=ord(#13) then Edit4.SetFocus;
end;

procedure TForm13.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=ord(#13) then
Edit4.SetFocus;
end;

procedure TForm13.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=ord(#13) then
Edit5.SetFocus;
end;

procedure TForm13.Edit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=ord(#13) then
Edit6.SetFocus;
end;

procedure TForm13.Edit6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=ord(#13) then
Edit7.SetFocus;
end;

procedure TForm13.Edit7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=ord(#13) then
BitBtn1.SetFocus;
end;

//-----------------------------------------------------------------------------//


       //œŒ¬“Œ–»“‹ –≈ ¬»«»“€
procedure TForm13.BitBtn3Click(Sender: TObject);
var dp,f,p,a,t,av,n,di,u,ko,x1:string;
 c,pc,no,x,x2,x3,i:integer;
begin
Query1.SQL.Clear;
Query1.SQL.Add('SELECT * FROM ":INTRBASE1:Books" WHERE Notd=3 ORDER BY Snum');
Query1.Open;

Query2.SQL.Clear;
Query2.SQL.Add('SELECT * FROM ":INTRBASE1:Sdat" WHERE Notd=3 ORDER BY Snum');
Query2.Open;

Query1.Last;
Query2.Last;

Edit10.Text:=Query2.FieldByName('Fam').AsString;
Edit8.Text:=Query2.FieldByName('Pasp').AsString;
Edit9.Text:=Query2.FieldByname('Adr').AsString;
Edit11.Text:=Query2.FieldByName('Tel').AsString;
Edit2.SetFocus;
  //ÕÓÏÂ Í‚ËÚ‡ÌˆËË
Edit1.Text:=IntToStr(GetSnum('INTRBASE1',Q,3)+1);


end;

//-----------------------------------------------------------------------------//

 //Œ◊»—“»“‹
procedure TForm13.BitBtn4Click(Sender: TObject);
var x,x3,x2:integer;
   x1,d:string;
   d1:TDate;
begin
Edit10.Clear;
Edit9.Clear;
Edit8.Clear;
Edit11.Clear;
Edit2.Clear;
Edit4.Clear;
Edit5.Clear;
Edit7.Clear;


  //ÕÓÏÂ Í‚ËÚ‡ÌˆËË

Edit1.Text:=IntToStr(GetSnum('INTRBASE1',Q,3)+1);
Edit10.SetFocus;
Edit13.Text:=DateToStr(Today);

end;

//-----------------------------------------------------------------------------//






end.
