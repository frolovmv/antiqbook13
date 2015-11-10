unit Unit11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, DB, DBTables, RpDefine, RpCon,
  RpConDS, RpConBDE;

type
  TForm11 = class(TForm)
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
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;
  u:integer;

implementation
uses DateUtils;

{$R *.dfm}

procedure TForm11.BitBtn1Click(Sender: TObject);
begin
Form11.Close;
Table1.Active:=False;
Table2.Active:=False;
end;
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
Edit7.Clear;
Edit8.Clear;
Edit9.Clear;

Edit2.SetFocus;
Query1.SQL.Clear;
Query1.SQL.Add('SELECT * FROM ":Книги:Books.db" WHERE Notd=1 ORDER BY Snum');
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
x1:='3000001';
end;
 Edit1.Text:=(x1);
 Edit1.Text:=(x1);
 d1:=Today;
 Edit10.Text:=DateToStr(d1);
end;
//СОХРАНИТЬ КНОПКА
procedure TForm11.BitBtn2Click(Sender: TObject);
 var f,p,a,t,av,n,di,u,ko,x1,dp1,d:string;
 c,pc,no,x,x2,x3,i,nw,kol:integer;
 dp,d1:TDate;
 label K;
 label kolll;
 label koll;
begin
Query1.SQL.Clear;
Query1.SQL.Add('SELECT * FROM ":Книги:Books.db" WHERE Notd=1 ORDER BY Snum');
Query1.Open;
Query1.Last;
if (StrToInt(Edit1.Text)-1)<Query1.FieldByName('Snum').AsInteger
then
 //механизм ДОБАВИТЬ
                                 begin   //DOBAVIT
Table1.Active:=True;//ShowMessage('ACTIVE 1');
 Table2.Active:=True;
 Table2.First;
 Table1.First;

while not Table1.EOF do
                                      begin  //WHILE

i:=Table1.FieldByName('Snum').AsInteger;
if i=StrToInt(Edit1.Text) then

                                           begin   //SOVPADENIE
//ДОБАВЛЕНИЕ
Table1.Edit;
Table2.Edit;

kolll:
//dp:=Today;
//dp1:=DateToStr(dp);
f:=Edit2.Text;
p:='Не указывается';
a:=Edit3.Text;
t:='Не указывается';
av:='Не указывается';
n:=Edit4.Text;
di:=Edit9.Text;;

nw:=0;
ko:=Edit8.Text;
no:=1;
kol:=StrToInt(Edit6.Text);
c:=StrToInt(Edit5.Text);
pc:=StrToInt(Edit7.Text);

//Table1.FieldByName('Datepr').AsString:=dp1;
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
Table1.FieldByName('Kol').AsInteger:=kol;
Table1.FieldByName('Comment').AsString:=ko;

Table1.Post;
Table2.Post;

Table1.Active:=False;// ShowMessage('NO ACTIVE 1');
Table2.Active:=False;// ShowMessage('NO ACTIVE 2');
//ВРОДЕ ДОБАВИЛИ


Edit2.Clear;
Edit3.Clear;
Edit5.Clear;
Edit4.Clear;
Edit6.Clear;
Edit7.Clear;
Edit8.Clear;
Edit9.Clear;


  //Номер квитанции
Query1.SQL.Clear;
Query1.SQL.Add('SELECT * FROM ":Книги:Books.db" WHERE Notd=1 ORDER BY Snum');
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
x1:='3000001';
end;
 Edit1.Text:=(x1);
 Goto K;
                                       end;  //SOVPADENIE
                                 Table1.Next;
                                 Table2.Next;
       end;

 d1:=Today;
 Edit10.Text:=DateToStr(d1);      //WHILE
       Table1.Active:=False;
       Table2.Active:=False;//ShowMessage('NO ACTIVE 1');
      end   //DOBAVIT

else
 begin
//Механизм СОХРАНИТЬ
 koll:
dp:=Today;
dp1:=DateToStr(dp);
f:=Edit2.Text;
p:='Не указывается';
a:=Edit3.Text;
t:='Не указывается';
av:='Не указывается';
n:=Edit4.Text;
di:=Edit9.Text;;
nw:=0;
ko:=Edit8.Text;
no:=1;
kol:=StrToInt(Edit6.Text);
c:=StrToInt(Edit5.Text);
pc:=StrToInt(Edit7.Text);

Table1.Active:=True; //ShowMessage('ACTIVE 1');
Table2.Active:=True;// ShowMessage('ACTIVE 2');

 Query1.SQL.Clear;
Query1.SQL.Add('SELECT * FROM ":Книги:Books.db" WHERE Notd=1 ORDER BY Snum');
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
x:=3000000;
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
Table1.FieldByName('Notd').AsInteger:=1;
Table2.FieldByName('Notd').AsInteger:=1;
Table1.FieldByName('Dateprod').AsString:='11.11.1111';
Table1.FieldByName('Vozvr').AsBoolean:=False;
Table1.FieldByName('Otpr').AsBoolean:=False;
Table1.FieldByName('Prod').AsBoolean:=False;
Table1.FieldByName('God').AsBoolean:=True;
Table1.FieldByName('God1').AsBoolean:=True;
Table1.FieldByName('Snum').AsInteger:=x+1;
Table2.FieldByName('Snum').AsInteger:=x+1;
Table1.FieldByName('Comment').AsString:=ko;
Table1.FieldByName('Kol').AsInteger:=kol;
Table1.Post;
Table2.Post;

Table1.Active:=False; //ShowMessage('NO ACTIVE 1');
Table2.Active:=False; //ShowMessage('NO ACTIVE 2');


Edit2.Clear;
Edit3.Clear;
Edit5.Clear;
Edit4.Clear;
Edit6.Clear;
Edit7.Clear;
Edit8.Clear;
Edit9.Clear;


  //Номер квитанции
Query1.SQL.Clear;
Query1.SQL.Add('SELECT * FROM ":Книги:Books.db" WHERE Notd=1 ORDER BY Snum');
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
x1:='3000001';
end;
 Edit1.Text:=(x1);

end;
K:
Edit2.SetFocus;

 d1:=Today;
 Edit10.Text:=DateToStr(d1);
Query3.SQL.Clear;
Query3.SQL.Add('SELECT ');


end;
 //ПОВТОР РЕКВИЗИТОВ
procedure TForm11.BitBtn3Click(Sender: TObject);
var dp,f,p,a,t,av,n,di,u,ko,x1:string;
 c,pc,no,x,x2,x3,i:integer;
begin
Query1.SQL.Clear;
Query1.SQL.Add('SELECT * FROM ":Книги:Books.db" WHERE Notd=1 ORDER BY Snum');
Query1.Open;

Query2.SQL.Clear;
Query2.SQL.Add('SELECT * FROM ":Книги:Sdat.db" WHERE Notd=1 ORDER BY Snum');
Query2.Open;

Query1.Last;
Query2.Last;

Edit2.Text:=Query2.FieldByName('Fam').AsString;
Edit3.Text:=Query2.FieldByname('Adr').AsString;
Edit4.SetFocus;
  //Номер квитанции
  Query1.SQL.Clear;
Query1.SQL.Add('SELECT * FROM ":Книги:Books.db" WHERE Notd=1 ORDER BY Snum');
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
x1:='3000001';
end;
 Edit1.Text:=(x1);

end;





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
Edit4.SetFocus;
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
      //ОЧИСТИТЬ
procedure TForm11.BitBtn4Click(Sender: TObject);
var dp,f,p,a,t,av,n,di,u,ko,x1,d:string;
 c,pc,no,x,x2,x3,i:integer;
 d1:TDate;
begin
Edit2.Clear;
Edit3.Clear;
Edit4.Clear;
Edit5.Clear;
Edit6.Clear;
Edit7.Clear;
Edit8.Clear;
Edit9.Clear;

Query1.SQL.Clear;
Query1.SQL.Add('SELECT * FROM ":Книги:Books.db" WHERE Notd=1 ORDER BY Snum');
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
x1:='3000001';
end;
 Edit1.Text:=(x1);
 Edit2.SetFocus;
 d1:=Today;
 d:=DateToStr(d1);
 Edit10.Text:=d;

end;

procedure TForm11.Edit9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key=ord(#13) then
Edit5.SetFocus;
end;
//ИСПРАВИТЬ
procedure TForm11.BitBtn5Click(Sender: TObject);
var dp,f,p,a,t,av,n,di,u,ko,x1,dp1:string;
 c,pc,no,x,x2,x3,i,kol:integer;
begin
Query1.SQL.Clear;
Query1.SQL.Add('SELECT * FROM ":Книги:Books.db" WHERE Notd=1 ORDER BY Snum');
Query1.Open;
if Query1.RecordCount <> 0 then
begin
  Query1.Last;
x:=Query1.FieldByName('Snum').AsInteger;
x1:=IntToStr(x);
end
 else
 begin
//ShowMessage('Нет Записей');
x1:='3000001';
end;
 Edit1.Text:=(x1);
 Query2.SQL.Clear;
Query2.SQL.Add('SELECT * FROM ":Книги:Sdat.db" WHERE Notd=1 ORDER BY Snum');
Query2.Open;
if Query2.RecordCount <> 0 then
  Query2.Last;

Edit10.Text:=Query1.FieldByName('Datepr').AsString;
//Date.Date:=StrToDate(dp1);
Edit2.Text:=Query2.FieldByName('Fam').AsString;
Edit3.Text:=Query2.FieldByName('Adr').AsString;
Edit4.Text:=Query1.FieldByName('Nazvan').AsString;
Edit9.Text:=Query1.FieldByName('Dateizd').AsString;
c:=Query1.FieldByName('Pricepr').AsInteger;
Edit5.Text:=IntToStr(c);
pc:=Query1.FieldByName('Procent').AsInteger;
Edit7.Text:=IntToStr(pc);
kol:=Query1.FieldByName('Kol').AsInteger;
Edit6.Text:=IntToStr(kol);
Edit8.Text:=Query1.FieldByName('Comment').AsString;
end;

end.
