unit OtkritkiOtd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, DB, DBTables, RpDefine, RpCon,
  RpConDS, RpConBDE, RpRave;

type
  TForm11 = class(TForm)
    BitBtn1: TBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Edit3: TEdit;
    Label2: TLabel;
    Edit4: TEdit;
    Label3: TLabel;
    Edit5: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Edit7: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Edit8: TEdit;
    Label9: TLabel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Query1: TQuery;
    Query2: TQuery;
    Edit9: TEdit;
    Label10: TLabel;
    Q: TQuery;
    Edit10: TEdit;
    Button2: TButton;
    Edit11: TEdit;
    Edit6: TEdit;
    QueryOtkrPrint1: TQuery;
    RvProjectOtkritk: TRvProject;
    RvQueryConnOtkrit1: TRvQueryConnection;
    RvQueryConnOtkrit2: TRvQueryConnection;
    QueryOtkrPrint2: TQuery;
    RvQueryConnOtkrit3: TRvQueryConnection;
    QueryOtkrPrint3: TQuery;
    RvQueConText: TRvQueryConnection;
    QueText: TQuery;
    Q2: TQuery;
    Label11: TLabel;
    EditPasp: TEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
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
    procedure Edit7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit8KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn4Click(Sender: TObject);
    procedure Edit9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure EditPaspKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;
procedure CopyAllOnDatabaseInTable( dbnameout:string; dbnamein:string;var Query:TQuery;var Query1:TQuery;TableName:string);
procedure DelAllOnDatabaseTable( dbname:string;var Query:TQuery;TableName:string);
procedure InsertInONumber(dbname:string; var Query:TQuery; val:integer;sum:String);
    procedure UpdateONumber(dbname:string; var Query:TQuery; id:String; val:String);
implementation
uses DateUtils,Knigi,Unit21;

{$R *.dfm}
var count:integer=0;

procedure CopyAllOnDatabaseInTable
( dbnameout:string; dbnamein:string;var Query:TQuery;var Query1:TQuery;TableName:string);
     var
         fc:integer;
         i:integer;

         // BOOKS
         snum:integer;
         notd:integer;
         avt:string;
         naz:string;
         dizd:integer;
         datepr:TDate;
         komm:string;
         cena:integer;
         pc:integer;
         now:integer;
         kol:integer;
         who:integer;
         otkr:integer;
         oid:integer;

         // SDAT
         tel:string;
         fam:string;
         pasp:string;
         adr:string;

begin
   //ShowMessage('LINE 1');
   Query.SQL.Clear;
   Query.DatabaseName := dbnameout;
   Query.SQL.Add('SELECT * FROM  '+TableName+'');
   Query.Open;
 //  ShowMessage('REC count: '+IntToStr(Query.RecordCount));

   if  Query.RecordCount <> 0 then

     for i := 1 to Query.RecordCount do
      begin
           // ShowMessage('Query's got a results');
           // Fetch row
            if TableName = 'Books' then
              begin
              // ShowMessage('INIT VAR 4 BOOKS');
               snum   := Query.FieldByName('SNUM').AsInteger;
               notd   := Query.FieldByName('NOTD').AsInteger;
               avt    := Query.FieldByName('AVTOR').AsString;
               naz    := Query.FieldByName('NAZVAN').AsString;
               dizd   := Query.FieldByName('DATEIZD').AsInteger;
               datepr := Today;
               komm   := Query.FieldByName('COMMENT').AsString;
               cena   := Query.FieldByName('PRICEPR').AsInteger;
               pc     := Query.FieldByName('PROCENT').AsInteger;
               now    := Query.FieldByName('NOW').AsInteger;
               kol    := Query.FieldByName('KOL').AsInteger;
               who    := Query.FieldByName('WHO').AsInteger;
               otkr   := Query.FieldByName('OTKR').AsInteger;
               oid    := Query.FieldByName('OID').AsInteger;

               InsertInBooks('INTRBASE1',Query1,snum,notd,avt,naz,dizd ,Today,komm,cena,pc,now,kol,who,otkr,oid,'-1','-1');

              end;

              //SDAT
              if TableName = 'Sdat' then
                begin
                // ShowMessage('INIT VAR 4 SDAT');
                 snum   := Query.FieldByName('SNUM').AsInteger;
                 tel    := Query.FieldByName('TEL').AsString;
                 fam    := Query.FieldByName('FAM').AsString;
                 pasp   := Query.FieldByName('PASP').AsString;
                 adr    := Query.FieldByName('ADR').AsString;
                 notd   := Query.FieldByName('NOTD').AsInteger;
                 oid    := Query.FieldByName('OID').AsInteger;

                 // INSERT IN SDAT
                 Query1.SQL.Clear;
                 Query1.DatabaseName := dbnamein;
                 Query1.SQL.Add('INSERT INTO SDAT (CSDAT,SNUM,TEL,FAM,PASP,ADR,NOTD,OID) VALUES ');
                 Query1.SQL.Add(' (' +IntToStr(snum+1)+ ','+IntToStr(snum)+ ',"' +tel+ '","'+fam+'","'+pasp+'","'+adr+'",'+IntToStr(notd)+ ','+IntToStr(oid)+')');
                 Query1.ExecSQL;
                end;

               Query.Next;
             end; // Insert 1 field

end;

//======================== Вставка в ONUMBER =================
procedure InsertInONumber(dbname:string; var Query:TQuery; val:integer;sum:String);
  begin
          Query.SQL.Clear;
          Query.DatabaseName := dbname;
          Query.SQL.Add('INSERT INTO ONUMBER(id,price) VALUES (' + IntToStr(val) +','+ sum +')');
          Query.ExecSQL;
  end;
  procedure UpdateONumber(dbname:string; var Query:TQuery; id:String; val:String);
  begin
          Query.SQL.Clear;
          Query.DatabaseName := dbname;
          Query.SQL.Add('UPDATE ONUMBER set price=' + val +' where id='+ id );
          Query.ExecSQL;
  end;
procedure DelAllOnDatabaseTable( dbname:string;var Query:TQuery;TableName:string);
begin
Query.SQL.Clear;
Query.DatabaseName:=dbname;
Query.SQL.Add('DELETE FROM '+TableName);
Query.ExecSQL;
end;

procedure TForm11.BitBtn1Click(Sender: TObject);
begin
Form11.Close;
end;

//--------------------------------------------------------------------------//

  //АКТИВАЦИЯ
procedure TForm11.FormActivate(Sender: TObject);
var x,x2:integer;
x1,d:string;
d1:TDate;
 begin
Edit2.Clear;
Edit3.Clear;
Edit4.Clear;
Edit5.Clear;
Edit6.Clear;
Edit8.Clear;
Edit9.Clear;
EditPasp.Clear;
Edit2.SetFocus;

Edit1.Text:=IntToStr(GetOID('INTRBASE1',Q)+1);
Edit10.Text:=DateToStr(Today);

try
DelAllOnDatabaseTable('Книги',Q,'Books');
DelAllOnDatabaseTable('Книги',Q,'Sdat');

except
 begin

ShowMessage('Ошибка в удалении списка принятых открыток!!');
raise;
 end;
end;

end;

//-------------------------------------------------------------------------//

procedure updateLocalOid(Dbname:string;var Query:TQuery;newOID :string);
begin
//ShowMessage('UPDATE OID='+newOID);
Query.Close;
Query.DatabaseName:=Dbname;

      //books
Query.SQL.Clear;
Query.SQL.Add('update books set oid='+newOID);
Query.ExecSQL;
      //sdat
Query.SQL.Clear;
Query.SQL.Add('update sdat set oid='+newOID);
Query.ExecSQL;
end;

//ЗАНЕСТИ ТЕКУЩУЮ ЗАПИСЬ КНОПКА
procedure TForm11.BitBtn2Click(Sender: TObject);
 var f,p,a,t,av,n,u,ko,x1,dp1,d,pasp:string;
 c,pc,no,x,x2,x3,di,i,nw,kol,who,snum,oid:integer;
 Db:TDatabase;
begin
f:=Edit2.Text;
a:=Edit3.Text;
t:='Не указывается';
av:='Не указывается';
n:=Edit4.Text;
if(Edit9.Text='') then di:=0 else di:=StrToInt(Edit9.Text);
nw:=0;
ko:=Edit8.Text;
no:=1;
kol:=StrToInt(Edit6.Text);
c:=StrToInt(Edit5.Text);
pc:=StrToInt(Edit7.Text);
who:=StrToInt(Edit11.Text);

if((GetOID('INTRBASE1',Q)+1) <> StrToInt(Edit1.Text))
        then
           updateLocalOid('Книги', Q, IntToStr( GetOID('INTRBASE1',Q)+1));

Edit1.Text := IntToStr( GetOID('INTRBASE1',Q)+1);
oid := GetOID('INTRBASE1',Q)+1;
pasp := EditPasp.Text;

try
// Possible exeption in  multitheard work!!!(multiple getting one last number )
if count=0 then snum:=GetSnum('INTRBASE1',Q,1)+1
 else snum:=GetSnum('Книги',Q,1)+1;

InsertInBooks('Книги',Q,snum,1,av,n,di,Today,ko,c,pc,nw,kol,who,GetSnum('INTRBASE1',Q,1)+1,oid,'-1','-1');

if count=0 then InsertInSdat('Книги',Q,snum,t,f,pasp ,a,1, oid);

count:=count+1;

     except
begin
ShowMessage('Изменения не сохранились!!');
raise;
end;
     end;

Edit2.Clear;
Edit3.Clear;
Edit5.Clear;
Edit4.Clear;
Edit6.Clear;
Edit8.Clear;
Edit9.Clear;
EditPasp.Clear;

end;

//--------------------------------------------------------------------------//


 //ПОВТОР РЕКВИЗИТОВ
procedure TForm11.BitBtn3Click(Sender: TObject);
var dp,f,p,a,t,av,n,di,u,ko,x1,tabl:string;
 c,pc,no,x,x2,x3,i:integer;
 Db:TDatabase;
begin

if count=0 then begin Query1.Close; Query1.DatabaseName:='INTRBASE1'; end
  else begin Query1.Close; Query1.DatabaseName:='Книги'; end;
if count=0 then begin Query2.Close; Query2.DatabaseName:='INTRBASE1'; end
  else begin Query2.Close; Query2.DatabaseName:='Книги'; end;

Query1.SQL.Clear;

Query1.SQL.Add('SELECT * FROM Books WHERE Notd=1 ORDER BY Snum');
Query1.Open;

Query2.SQL.Clear;
Query2.SQL.Add('SELECT * FROM Sdat WHERE Notd=1 ORDER BY Snum');
Query2.Open;

Query1.Last;
Query2.Last;

if (GetOID('INTRBASE1',Q)+1) <> StrToInt(Edit1.Text) then
           updateLocalOid('Книги', Q, IntToStr(GetOID('INTRBASE1',Q)+1));

Edit1.Text := IntToStr( GetOID('INTRBASE1',Q)+1);

Edit2.Text:=Query2.FieldByName('Fam').AsString;
Edit3.Text:=Query2.FieldByname('Adr').AsString;
EditPasp.Text:=Query2.FieldByname('Pasp').AsString;
Edit4.SetFocus;

end;


 //--------------------------------------------------------------------------//


procedure TForm11.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=ord(#13) then
Edit3.SetFocus;
end;

procedure TForm11.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=ord(#13) then
EditPasp.SetFocus;
end;


procedure TForm11.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=ord(#13) then
Edit9.SetFocus;
end;

procedure TForm11.Edit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=ord(#13) then
Edit6.SetFocus;
end;

procedure TForm11.Edit6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=ord(#13) then
Edit7.SetFocus;
end;

procedure TForm11.Edit7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=ord(#13) then
Edit8.SetFocus;
end;

procedure TForm11.Edit8KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=ord(#13) then
BitBtn2.SetFocus;
end;

//--------------------------------------------------------------------------//

      //ОЧИСТИТЬ
procedure TForm11.BitBtn4Click(Sender: TObject);
var dp,f,p,a,t,av,n,di,u,ko,x1,d:string;
 c,pc,no,x,x2,x3,i:integer;
 Db:TDatabase;
begin

Edit2.Clear;
Edit3.Clear;
Edit4.Clear;
Edit5.Clear;
Edit6.Clear;
Edit7.Clear;
Edit8.Clear;
Edit9.Clear;
EditPasp.Clear;
Edit2.SetFocus;

Edit1.Text:=IntToStr(GetOID('INTRBASE1',Q)+1);

Edit10.Text:=DateToStr(Today);

end;

//--------------------------------------------------------------------------//

procedure TForm11.Edit9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key=ord(#13) then
Edit5.SetFocus;
end;


//---------------------------------------------------------------------------//

procedure TForm11.FormCreate(Sender: TObject);
begin
end;

//======================== СОХРАНИТЬ ИЗМЕНЕНИЯ В БД =======================================
procedure TForm11.Button2Click(Sender: TObject);
begin

if(GetOID('INTRBASE1',Q)+1) <> StrToInt(Edit1.Text)
        then
           updateLocalOid('Книги', Q, IntToStr(GetOID('INTRBASE1',Q)+1));

Edit1.Text := IntToStr( GetOID('INTRBASE1',Q)+1);

count:=0;
QueryOtkrPrint1.SQL.Clear;
QueryOtkrPrint1.SQL.Add('SELECT Datepr,Nazvan,Pricepr,Kol,Kol*Pricepr,comment,who FROM Books');

QueryOtkrPrint2.SQL.Clear;
QueryOtkrPrint2.SQL.Add('SELECT Sum(Kol),Sum(Kol*Pricepr) ag,Sum(Kol*Pricepr)-(Sum(Kol*Pricepr)*PROCENT*0.01) FROM Books group by PROCENT');

QueryOtkrPrint3.SQL.Clear;
QueryOtkrPrint3.SQL.Add('SELECT oid,Fam,Adr,Pasp FROM Sdat');

try
  CopyAllOnDatabaseInTable('Книги','INTRBASE1',Q,Q2,'Sdat');
  CopyAllOnDatabaseInTable('Книги','INTRBASE1',Q,Q2,'Books');
  QueryOtkrPrint2.Open;

  InsertInONumber('INTRBASE1', Q,  GetOID('INTRBASE1',Q)+1,QueryOtkrPrint2.FieldByName('ag').AsString);
except
  begin
   ShowMessage('Данные об открытках не скопированы на сервер!!!');
   raise;
  end;
end;
Form21.ShowModal;

//======================== ПЕЧАТЬ ===============================//

Quetext.SQL.Clear;
QueText.SQL.Add('SELECT * FROM PRICESTR');

RvProjectOtkritk.Open;
RvProjectOtkritk.Execute;
RvProjectOtkritk.Close;

Quetext.SQL.Clear;
QueText.SQL.Add('DELETE FROM PRICESTR');
QueText.ExecSQL;

try
DelAllOnDatabaseTable('Книги',Q,'Books');
DelAllOnDatabaseTable('Книги',Q,'Sdat');

except
 begin
  ShowMessage('Ошибка в удалении списка принятых открыток!!');
  raise;
 end;
end;

Edit1.Text:=IntToStr(GetOID('INTRBASE1',Q)+1);
Edit10.Text:=DateToStr(Today);

end;

procedure TForm11.EditPaspKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if Key=ord(#13) then
Edit4.SetFocus;
end;

end.
