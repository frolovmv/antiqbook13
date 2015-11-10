unit Unit14;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, DBTables, ExtCtrls;

type
  TForm14 = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Query1: TQuery;
    Query2: TQuery;
    Query3: TQuery;
    Table1: TTable;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Image1: TImage;
    BitBtn5: TBitBtn;
    Button1: TButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form14: TForm14;

implementation

uses Unit15, Unit17;

{$R *.dfm}

// ��������� �������� ����� �� ������ ������ �������
procedure makeFile(query: TQuery; fileName: String);
var temp, result : string;
var Bs:TextFile;
begin

AssignFile(Bs,'C:\BD_ANTIQ'+'\'+fileName);
Rewrite(Bs);

query.Open;
query.First;

While not query.Eof do
begin
// 1
temp:=query.FieldByName('Avtor').AsString;
if temp<>'' then temp:=   Copy(temp,1,1);
result:= temp+';';

// 2
temp:=query.FieldByName('Snum').AsString;
result:= result+ temp+';';

// 3
result:= result+ '���;';

// 4
temp:=query.FieldByName('Avtor').AsString;
result:= result+ temp+';';

//5
temp:=query.FieldByName('Nazvan').AsString;
result:= result + temp+';';
// 6
temp:=query.FieldByName('Dateizd').AsString;
result:= result+ temp+';';

// 7
temp:=query.FieldByName('Comment').AsString;
if temp = '' then   temp := '���';
result:= result+  temp+';';

// 8
temp:= query.FieldByName('Pricepr').AsString;
result:= result+ temp+';';

WriteLn(Bs, result);

query.Next;
end;//WHILE
CloseFile(Bs);

end;

// ��������� �������� ����� �� ������ ������ ������� (��� ��������)
procedure makeJuwelleryFile(query: TQuery; fileName: String);
var temp, result : string;
var Bs:TextFile;
begin
AssignFile(Bs,'C:\BD_ANTIQ'+'\'+fileName);
Rewrite(Bs);

query.Open;
query.First;

While not query.Eof do
begin
// 1
temp:=query.FieldByName('Avtor').AsString;

if temp<>'' then temp:=  Copy(temp,1,1);

result:= temp+';';

// 2
temp:=query.FieldByName('Snum').AsString;

result:= result + temp+';';

// 3
result:= result + '���;';

// 4
temp:=query.FieldByName('Avtor').AsString;
result:= result + temp+';';

temp:=query.FieldByName('Nazvan').AsString;
result:= result + temp+';';

// mass
temp:=query.FieldByName('JEW_MASS').AsString;
// mfrolov 15 jan 2009
temp := StringReplace(temp, '.',',', []);
// mfrolov end
result:= result + temp+';';

// probe
temp:=query.FieldByName('JEW_PROBE').AsString;
result:= result + temp+';';


temp:=query.FieldByName('Dateizd').AsString;
result:= result + temp+';';

// 5
temp:=query.FieldByName('Comment').AsString;
if temp = '' then   temp := '���';
result:= result + temp+';';

// 6
temp:= query.FieldByName('Pricepr').AsString;
result:= result + temp+';';

WriteLn(Bs, result);

query.Next;
end;//WHILE
CloseFile(Bs);
end;

procedure TForm14.BitBtn1Click(Sender: TObject);
begin
Form14.Close;
end;
   //�� ����
procedure TForm14.BitBtn2Click(Sender: TObject);
var
NumFile,Bn,Bs,Fa:TextFile;
a,n,di,com,s1,c1,aa,nn,dii,comm,ss1,cc1,aaa,nnn,diii,commm,sss1,ccc1:string;
s,c,s2,ss,sss,cc,ccc,ss2,sss2:integer;
label nl,m,l,r,j;

begin

//��������� �������

Query1.SQL.Clear;
Query1.SQL.Add('SELECT * FROM Books WHERE Notd=5 AND Prod=0 AND God=1 AND Vozvr=0');
makeJuwelleryFile(Query1, 's_juwellery.csv');

// �����������
Query1.SQL.Clear;
Query1.SQL.Add('SELECT * FROM Books WHERE Notd=2 AND Prod=0 AND Now=3  AND God=1 AND Vozvr=0');
makeFile(Query1, 's_numizm.csv');

 //��������������� �����
Query1.SQL.Clear;
Query1.SQL.Add('SELECT * FROM Books WHERE Notd=2 AND Prod=0 AND Now=2 AND God=1 AND Vozvr=0');
makeFile(Query1, 's_book40.csv');

 //����������� �����

Query1.SQL.Clear;
Query1.SQL.Add('SELECT * FROM Books WHERE Notd=2 AND Prod=0 AND Now=1  AND God=1 AND Vozvr=0');
makeFile(Query1, 's_antbook.csv');

 //�����������

Query1.SQL.Clear;
Query1.SQL.Add('SELECT * FROM Books WHERE Notd=3 AND Prod=0 AND God=1 AND Vozvr=0');
makeFile(Query1, 's_antiquar.csv');

ShowMessage('  �������� ���������� ������ �������!!! ');
BitBtn2.Enabled:=False;

end;  //PROCEDURE

procedure TForm14.BitBtn4Click(Sender: TObject);
begin
Form15.ShowModal;
end;

procedure TForm14.FormActivate(Sender: TObject);
begin
 BitBtn2.Enabled:=True
end;

procedure TForm14.BitBtn5Click(Sender: TObject);
begin
Form17.ShowModal;
end;
        // ������� ���� � ������
procedure TForm14.Button1Click(Sender: TObject);
var
NumFile,Bn,Bs,Fa:TextFile;
a,n,di,com,s1,c1,aa,nn,dii,comm,ss1,cc1,aaa,nnn,diii,commm,sss1,ccc1:string;
s,c,s2,ss,sss,cc,ccc,ss2,sss2:integer;
label nl,m,l,r,j;

begin


// ============================================================================

    //��������� �������

AssignFile(Bs,'C:\BD_ANTIQ\s_juwellery.csv');
Rewrite(Bs);
Query1.SQL.Clear;
Query1.SQL.Add('SELECT * FROM Books');
Query1.SQL.Add('WHERE Notd=5 AND Prod=0  AND God=1  ');
Query1.SQL.Add('AND Vozvr=0');
Query1.Open;
Query1.First;
While not Query1.Eof do
begin
// 1
a:=Query1.FieldByName('Avtor').AsString;

if a<>'' then a:=   Copy(a,1,1);

Write(Bs,a+';');

// 2
s:=Query1.FieldByName('Snum').AsInteger;
s1:=IntToStr(s);
Write(Bs,s1+';');

// 3
Write(Bs,'���;');

// 4
a:=Query1.FieldByName('Avtor').AsString;
//if a <> ''  then
Write(Bs,a+';');

n:=Query1.FieldByName('Nazvan').AsString;
//if n <> ''  then
Write(Bs,n+';');

// mass
n:=Query1.FieldByName('JEW_MASS').AsString;
// mfrolov 15 jan 2009
n := StringReplace(n, '.',',', []);
// mfrolov end
//if n <> ''  then
Write(Bs,n+';');

// probe
n:=Query1.FieldByName('JEW_PROBE').AsString;
//if n <> ''  then
Write(Bs,n+';');


di:=Query1.FieldByName('Dateizd').AsString;
//if (di <> '0') and (di <> '') then
Write(Bs,di+';');

//Write(Bs,';');

// 5
com:=Query1.FieldByName('Comment').AsString;
if com = '' then   com := '���';
Write(Bs,com+';');

// 6
c:= Query1.FieldByName('Pricepr').AsInteger;
c1:=IntToStr(c);
WriteLn(Bs,c1+';');


Table1.Active:=True;
Table1.First;
While not Table1.Eof do
begin
ss2:=Table1.FieldByName('Snum').AsInteger;
if ss2=ss then
begin
Table1.Edit;
Table1.FieldByName('Otpr').AsInteger:=0;
Table1.Post;
Goto l;
end;
Table1.Next;
end;
l:
Table1.Active:=False;
Query1.Next;
end;//WHILE
CloseFile(Bs);
end;

end.
