{$A8,B-,C+,D+,E-,F-,G+,H+,I+,J-,K-,L+,M-,N+,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
{$WARN SYMBOL_DEPRECATED ON}
{$WARN SYMBOL_LIBRARY ON}
{$WARN SYMBOL_PLATFORM ON}
{$WARN UNIT_LIBRARY ON}
{$WARN UNIT_PLATFORM ON}
{$WARN UNIT_DEPRECATED ON}
{$WARN HRESULT_COMPAT ON}
{$WARN HIDING_MEMBER ON}
{$WARN HIDDEN_VIRTUAL ON}
{$WARN GARBAGE ON}
{$WARN BOUNDS_ERROR ON}
{$WARN ZERO_NIL_COMPAT ON}
{$WARN STRING_CONST_TRUNCED ON}
{$WARN FOR_LOOP_VAR_VARPAR ON}
{$WARN TYPED_CONST_VARPAR ON}
{$WARN ASG_TO_TYPED_CONST ON}
{$WARN CASE_LABEL_RANGE ON}
{$WARN FOR_VARIABLE ON}
{$WARN CONSTRUCTING_ABSTRACT ON}
{$WARN COMPARISON_FALSE ON}
{$WARN COMPARISON_TRUE ON}
{$WARN COMPARING_SIGNED_UNSIGNED ON}
{$WARN COMBINING_SIGNED_UNSIGNED ON}
{$WARN UNSUPPORTED_CONSTRUCT ON}
{$WARN FILE_OPEN ON}
{$WARN FILE_OPEN_UNITSRC ON}
{$WARN BAD_GLOBAL_SYMBOL ON}
{$WARN DUPLICATE_CTOR_DTOR ON}
{$WARN INVALID_DIRECTIVE ON}
{$WARN PACKAGE_NO_LINK ON}
{$WARN PACKAGED_THREADVAR ON}
{$WARN IMPLICIT_IMPORT ON}
{$WARN HPPEMIT_IGNORED ON}
{$WARN NO_RETVAL ON}
{$WARN USE_BEFORE_DEF ON}
{$WARN FOR_LOOP_VAR_UNDEF ON}
{$WARN UNIT_NAME_MISMATCH ON}
{$WARN NO_CFG_FILE_FOUND ON}
{$WARN MESSAGE_DIRECTIVE ON}
{$WARN IMPLICIT_VARIANTS ON}
{$WARN UNICODE_TO_LOCALE ON}
{$WARN LOCALE_TO_UNICODE ON}
{$WARN IMAGEBASE_MULTIPLE ON}
{$WARN SUSPICIOUS_TYPECAST ON}
{$WARN PRIVATE_PROPACCESSOR ON}
{$WARN UNSAFE_TYPE OFF}
{$WARN UNSAFE_CODE OFF}
{$WARN UNSAFE_CAST OFF}
unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBTables, DB, Mask, Menus, ExtCtrls, Buttons, ComCtrls,
  RpDefine, RpCon, RpConDS, RpConBDE, RpRave, Grids, DBGrids;

type
  TForm5 = class(TForm)
    Label1: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button4: TButton;
    Edit1: TEdit;
    Edit9: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    MaskEdit3: TMaskEdit;
    Edit4: TEdit;
    MaskEdit2: TMaskEdit;
    MaskEdit5: TMaskEdit;
    Edit5: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    BitBtn2: TBitBtn;
    Edit6: TEdit;
    Edit7: TEdit;
    Table1: TTable;
    Table2: TTable;
    Query1: TQuery;
    Query2: TQuery;
    RvQueryConnection1: TRvQueryConnection;
    Query3: TQuery;
    RvProject1: TRvProject;
    Table3: TTable;
    Table4: TTable;
    Q: TQuery;
    Database1: TDatabase;
    Database2: TDatabase;


    procedure Button1Click(Sender: TObject);

    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit12KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit11KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit13KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MaskEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MaskEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MaskEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  insClientKnigi:string='INSERT INTO ":k:Books.db" (SELECT * FROM ":s:Books.db")';
  delClientKnigi:string='DELETE FROM ":k:Books.db"';
  insClientSdat:string='INSERT INTO ":k:Sdat.db" (SELECT * FROM ":s:Sdat.db")';
  delClientSdat:string='DELETE FROM ":k:Sdat.db"';
  insServerKnigi:string='INSERT INTO ":s:Books.db" (SELECT * FROM ":k:Books.db")';
  delServerKnigi:string='DELETE  FROM ":s:Books.db"';
  insServerSdat:string='INSERT INTO ":s:Sdat.db" (SELECT * FROM ":k:Sdat.db")';
  delServerSdat:string='DELETE  FROM ":s:Sdat.db"';
procedure DelOrInsert(InsOrDel:string;var Query:TQuery);

implementation

uses Unit6,DateUtils;

{$R *.dfm}

procedure DelOrInsert(InsOrDel:string;var Query:TQuery);
begin
Query.SQL.Clear;
Query.SQL.Add(InsOrDel);
Query.ExecSQL;
end;


procedure TForm5.Button1Click(Sender: TObject);
begin
Form5.Close;
end;



procedure TForm5.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=ord(#13) then
 Edit12.SetFocus;
end;



procedure TForm5.Edit12KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=ord(#13) then
Edit11.SetFocus;
end;

procedure TForm5.Edit11KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=ord(#13) then
Edit4.SetFocus;
end;

procedure TForm5.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=ord(#13) then
Edit13.SetFocus;
end;

procedure TForm5.Edit9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=ord(#13) then
MaskEdit3.SetFocus;
end;

procedure TForm5.Edit13KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=ord(#13) then
Edit9.SetFocus;
end;

procedure TForm5.MaskEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=ord(#13) then
Edit5.SetFocus;
end;

procedure TForm5.Edit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=ord(#13) then
MaskEdit2.SetFocus;
end;

procedure TForm5.MaskEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=ord(#13) then
MaskEdit5.SetFocus;
end;

procedure TForm5.MaskEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=ord(#13) then
Edit2.SetFocus;
end;
 //АКТИВАЦИЯ ФОРМЫ
procedure TForm5.FormActivate(Sender: TObject);
var x,x2:integer;
x1,d:string;
d1:TDate;
begin

Edit1.Clear;
Edit12.Clear;
Edit11.Clear;
Edit4.Clear;
Edit9.Clear;
Edit13.Clear;
MaskEdit3.Clear;
Edit5.Clear;
MaskEdit2.Clear;
MaskEdit5.Clear;
Edit2.Clear;

Edit1.SetFocus;

 try
 Database1.KeepConnection:=True;
  Database2.KeepConnection:=True;
 except
                 begin
  ShowMessage('НЕТ СВЯЗИ С СЕРВЕРОМ!!!');
  raise;
                 end;
 end;
 

Query1.SQL.Clear;
Query1.SQL.Add('SELECT * FROM ":СерверКниги:Books.db" WHERE Notd=2 ORDER BY Snum');
Query1.Open;
if Query1.RecordCount <> 0 then
begin
//ShowMessage('Есть Записи');
  Query1.Last;
x:=Query1.FieldByName('Snum').AsInteger;
x2:=x+1;
x1:=IntToStr(x2);
end
 else
 begin
//ShowMessage('Нет Записей');
x1:='2000001';
end;
 Edit3.Text:=(x1);
 d1:=Today;
 d:=DateToStr(d1);
 Edit6.Text:=d;

  ShowMessage('Activate OK');


end;

procedure TForm5.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=ord(#13) then
Button4.SetFocus;
end;
//ПОВТОРИТЬ РЕКВИЗИТЫ КНОПКА
procedure TForm5.Button2Click(Sender: TObject);
 var dp,f,p,a,t,av,n,di,u,ko,x1:string;
 c,pc,no,x,x2,x3,i:integer;
begin
try
  Database1.KeepConnection:=True;
  Database2.KeepConnection:=True;
 except
                 begin
  ShowMessage('НЕТ СВЯЗИ С СЕРВЕРОМ!!!');
  raise;
                 end;
 end;

Query1.SQL.Clear;
Query1.SQL.Add('SELECT * FROM ":k:Books.db" WHERE Notd=2 ORDER BY Snum');
Query1.Open;

Query2.SQL.Clear;
Query2.SQL.Add('SELECT * FROM ":k:Sdat.db" WHERE Notd=2 ORDER BY Snum');
Query2.Open;

Query1.Last;
Query2.Last;

Edit1.Text:=Query2.FieldByName('Fam').AsString;
Edit12.Text:=Query2.FieldByName('Pasp').AsString;
Edit11.Text:=Query2.FieldByname('Adr').AsString;
Edit4.Text:=Query2.FieldByName('Tel').AsString;
Edit13.SetFocus;
  //Номер квитанции
  Query1.SQL.Clear;
Query1.SQL.Add('SELECT * FROM ":k:Books.db" WHERE Notd=2 ORDER BY Snum');
Query1.Open;
if Query1.RecordCount <> 0 then
begin
//ShowMessage('Есть Записи');
  Query1.Last;
x:=Query1.FieldByName('Snum').AsInteger;
x2:=x+1;
x1:=IntToStr(x2);
end
 else
 begin
//ShowMessage('Нет Записей');
x1:='2000001';
end;
 Edit3.Text:=(x1);

end;




   //СОХРАНИТЬ
procedure TForm5.Button4Click(Sender: TObject);
  var f,p,a,t,av,n,di,u,ko,x1,dp1,d,snum1:string;
 c,pc,no,x,x2,x3,i,nw,snum4:integer;
 dp,d1:TDate;
 ii:integer;
 Zan:Boolean;
 label K,Nf;

begin
 try
  Database1.KeepConnection:=True;
  Database2.KeepConnection:=True;
 except
                 begin
  ShowMessage('НЕТ СВЯЗИ С СЕРВЕРОМ!!!');
  raise;
                 end;
 end;

 try
Database1.StartTransaction;
Q.DatabaseName:='k';

DelOrInsert(delClientKnigi,Q);
DelOrInsert(delClientSdat,Q);

DelOrInsert(insClientKnigi,Q);
DelOrInsert(insClientSdat,Q);

Database1.Commit;
ShowMessage('Чтение Данных С Сервера Прошло УСПЕШНО!!');
 except
                 begin
  Database1.Rollback;
  ShowMessage('ИЗМЕНЕНИЯ НЕ СОХРАНИЛИСЬ, ПОВТОРИТЕ ВСЕ ЕЩЕ РАЗ!!!');
  raise;
                 end;
 end;





Query1.SQL.Clear;
Query1.SQL.Add('SELECT * FROM ":k:Books.db" WHERE Notd=2 ORDER BY Snum');
Query1.Open;
Query1.Last;
if (StrToInt(Edit3.Text)-1)<Query1.FieldByName('Snum').AsInteger
 //Выбор номера последнего
then
 //механизм ДОБАВИТЬ
                                 begin
                               //  ShowMessage('МЕХАНИЗМ ДОБАВИТЬ');
Table1.Active:=True;Table2.Active:=True;//ShowMessage('ACTIVE 1');
 Table1.First;Table2.First;

while not Table1.EOF do
                                      begin  //WHILE

i:=Table1.FieldByName('Snum').AsInteger;
if i=StrToInt(Edit3.Text) then

                                           begin   //SOVPADENIE
//ДОБАВЛЕНИЕ
Table1.Edit;
Table2.Edit;


f:=Edit1.Text;
p:=Edit12.Text;
a:=Edit11.Text;
t:=Edit4.Text;
av:=Edit9.Text;
n:=Edit13.Text;
di:=MaskEdit3.Text;
c:=StrToInt(Edit5.Text);
pc:=StrToInt(MaskEdit2.Text);
nw:=StrToInt(MaskEdit5.Text);
ko:=Edit2.Text;
no:=2;


Table2.FieldByName('Fam').AsString:=f;
Table2.FieldByName('Pasp').AsString:=p;
Table2.FieldByName('Adr').AsString:=a;
Table2.FieldByName('Tel').AsString:=t;
Table1.FieldByName('Avtor').AsString:=av;
Table1.FieldByName('Nazvan').AsString:=n;
Table1.FieldByName('Dateizd').AsString:=di;
Table1.FieldByName('Pricepr').AsInteger:=c;
Table1.FieldByName('Procent').AsInteger:=pc;
Table1.FieldByName('Now').AsInteger:=nw;
Table1.FieldByName('Notd').AsInteger:=no;
Table2.FieldByName('Notd').AsInteger:=no;
Table1.FieldByName('Comment').AsString:=ko;
Table1.Post;
Table2.Post;

Table1.Active:=False; //ShowMessage('NO ACTIVE 1');
Table2.Active:=False;// ShowMessage('NO ACTIVE 2');
//ВРОДЕ ДОБАВИЛИ


Edit1.Clear;
Edit12.Clear;
Edit11.Clear;
Edit4.Clear;
Edit9.Clear;
Edit13.Clear;
MaskEdit3.Clear;
Edit5.Clear;
MaskEdit2.Clear;
MaskEdit5.Clear;
Edit2.Clear;

  //Номер квитанции
Query1.SQL.Clear;
Query1.SQL.Add('SELECT * FROM ":k:Books.db" WHERE Notd=2 ORDER BY Snum');
Query1.Open;
if Query1.RecordCount <> 0 then
begin
//ShowMessage('Есть Записи');
  Query1.Last;
x:=Query1.FieldByName('Snum').AsInteger;
x2:=x+1;
x1:=IntToStr(x2);
end
 else
 begin
//ShowMessage('Нет Записей');
x1:='2000001';
 end;
 Edit3.Text:=(x1);
 Goto K;
                                       end;  //SOVPADENIE
                                 Table1.Next;
                                 Table2.Next;
       end;      //WHILE
       Table1.Active:=False;
       Table2.Active:=False;
d1:=Today;
 Edit6.Text:=DateToStr(d1);
      end   //DOBAVIT

else
 begin
 //ShowMessage('МЕХАНИЗМ СОХРАНИТЬ');
//Механизм СОХРАНИТЬ
dp:=Today;
dp1:=DateToStr(dp);
f:=Edit1.Text;
p:=Edit12.Text;
a:=Edit11.Text;
t:=Edit4.Text;
av:=Edit9.Text;
n:=Edit13.Text;
di:=MaskEdit3.Text;
c:=StrToInt(Edit5.Text);
pc:=StrToInt(MaskEdit2.Text);
nw:=StrToInt(MaskEdit5.Text);
ko:=Edit2.Text;
Table1.Active:=True; //ShowMessage('ACTIVE 1');
Table2.Active:=True; //ShowMessage('ACTIVE 2');

 Query1.SQL.Clear;
Query1.SQL.Add('SELECT * FROM ":k:Books.db" WHERE Notd=2 ORDER BY Snum');
Query1.Open;
if Query1.RecordCount <> 0 then
begin
//ShowMessage('Есть Записи');
  Query1.Last;
x:=Query1.FieldByName('Snum').AsInteger;

end
 else
 begin
//ShowMessage('Нет Записей');
x:=2000000;
end;




Table1.Insert;
Table2.Insert;

Table1.FieldByName('Datepr').AsString:=dp1;
Table2.FieldByName('Fam').AsString:=f;
Table2.FieldByName('Pasp').AsString:=p;
Table2.FieldByName('Adr').AsString:=a;
Table2.FieldByName('Tel').AsString:=t;
Table1.FieldByName('Avtor').AsString:=av;
Table1.FieldByName('Nazvan').AsString:=n;
Table1.FieldByName('Dateizd').AsString:=di;
Table1.FieldByName('Pricepr').AsInteger:=c;
Table1.FieldByName('Procent').AsInteger:=pc;
Table1.FieldByName('Now').AsInteger:=nw;
Table1.FieldByName('Notd').AsInteger:=2;
Table2.FieldByName('Notd').AsInteger:=2;
Table1.FieldByName('Dateprod').AsString:='11.11.1111';
Table1.FieldByName('Vozvr').AsBoolean:=False;
Table1.FieldByName('Otpr').AsBoolean:=False;
Table1.FieldByName('Prod').AsBoolean:=False;
Table1.FieldByName('God').AsBoolean:=True;
Table1.FieldByName('God1').AsBoolean:=True;
Table1.FieldByName('Snum').AsInteger:=x+1;
Table2.FieldByName('Snum').AsInteger:=x+1;
Table1.FieldByName('Comment').AsString:=ko;
Table1.FieldByName('Kol').AsInteger:=1;
Table1.Post;
Table2.Post;

Table1.Active:=False; //ShowMessage('NO ACTIVE 1');
Table2.Active:=False;// ShowMessage('NO ACTIVE 2');


Edit1.Clear;
Edit12.Clear;
Edit11.Clear;
Edit4.Clear;
Edit9.Clear;
Edit13.Clear;
MaskEdit3.Clear;
Edit5.Clear;
MaskEdit2.Clear;
MaskEdit5.Clear;
Edit2.Clear;

  //Номер квитанции
Query1.SQL.Clear;
Query1.SQL.Add('SELECT * FROM ":k:Books.db" WHERE Notd=2 ORDER BY Snum');
Query1.Open;
if Query1.RecordCount <> 0 then
begin
//ShowMessage('Есть Записи');
  Query1.Last;
x:=Query1.FieldByName('Snum').AsInteger;
x2:=x+1;
x1:=IntToStr(x2);
end
 else
 begin
//ShowMessage('Нет Записей');
x1:='2000001';
end;
 Edit3.Text:=(x1);

end;
K:
Edit1.SetFocus;
d1:=Today;
Edit6.Text:=DateToStr(d1);
//ОТЧЕТ-ПЕЧАТЬ
{snum4:=StrToInt(Edit3.Text)-1;
snum1:=IntToStr(snum4);
Query3.SQL.Clear;
Query3.SQL.Add('SELECT DISTINCT a.Snum,b.Fam,b.Adr,b.Pasp,a.Avtor,a.Nazvan,a.Dateizd,a.Pricepr,(a.Procent*a.Pricepr*0.01-a.Pricepr)*(-1),a.Datepr,b.Tel,a.Procent');
Query3.SQL.Add('FROM  ":k:Books.db"  a, ":k:Sdat.db"  b');
Query3.SQL.Add('WHERE a.Snum=B.Snum AND a.Snum='+snum1);
Query3.Open;
RvProject1.Execute; }

ii:=0;
Zan:=False;

while ((i<=25)and(Zan=False)) do
                          begin
try
Q.DatabaseName:='s';

DelOrInsert(delServerKnigi,Q);
DelOrInsert(delServerSdat,Q);

DelOrInsert(insServerKnigi,Q);
DelOrInsert(insServerSdat,Q);
Zan:=True;
ShowMessage('Занесение Данных На Сервер Прошло УСПЕШНО!!');

 except
                 begin
  ShowMessage('ИЗМЕНЕНИЯ НЕ СОХРАНИЛИСЬ, ПОВТОРИТЕ ВСЕ ЕЩЕ РАЗ!!!');
  ii:=ii+1;
                 end;
 end;
                          end;

 Database1.KeepConnection:=False;
 Database2.KeepConnection:=False;



Table3.Active:=False;
Table4.Active:=False;
end;


       //ОЧИСТИТЬ
procedure TForm5.BitBtn2Click(Sender: TObject);
var x,x3,x2:integer;
   x1,d:string;
   d1:TDate;
begin

Edit1.Clear;
Edit12.Clear;
Edit11.Clear;
Edit4.Clear;
Edit9.Clear;
Edit13.Clear;
MaskEdit3.Clear;
Edit5.Clear;
MaskEdit2.Clear;
MaskEdit5.Clear;
Edit2.Clear;

try
  Database1.KeepConnection:=True;
  Database2.KeepConnection:=True;
 except
                 begin
  ShowMessage('НЕТ СВЯЗИ С СЕРВЕРОМ!!!');
  raise;
                 end;
 end;

  //Номер квитанции
Query1.SQL.Clear;
Query1.SQL.Add('SELECT * FROM ":s:Books.db" WHERE Notd=2 ORDER BY Snum');
Query1.Open;
if Query1.RecordCount <> 0 then
begin
//ShowMessage('Есть Записи');
  Query1.Last;
x:=Query1.FieldByName('Snum').AsInteger;
x2:=x+1;
x1:=IntToStr(x2);
end
 else
 begin
//ShowMessage('Нет Записей');
x1:='2000001';
end;
 Edit3.Text:=(x1);
 Edit1.SetFocus;
 d1:=Today;
 d:=DateToStr(d1);
 Edit6.Text:=d;
end;

procedure TForm5.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if Table1.Active=True then begin ShowMessage('Таблица 1 активна');Table1.Active:=False; end else
//ShowMessage('Таблица 1 закрыта');
if Table2.Active=True then begin ShowMessage('Таблица 2 активна'); Table2.Active:=False; end else
//ShowMessage('Таблица 2 закрыта');
if Table3.Active=True then begin ShowMessage('Таблица Книги на сервере  активна');Table3.Active:=False; end;
if Table4.Active=True then begin ShowMessage('Таблица Сдатчики на сервере  активна');Table4.Active:=False; end;

Database1.KeepConnection:=False;
Database2.KeepConnection:=False;

end;


end.
