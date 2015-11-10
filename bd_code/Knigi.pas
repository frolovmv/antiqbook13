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
unit Knigi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBTables, DB, Mask, Menus, ExtCtrls, Buttons, ComCtrls,
  RpDefine, RpCon, RpConDS, RpConBDE, RpRave, Grids, DBGrids, RpBase,
  RpSystem,DateUtils;

type
  TForm5 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button4: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Edit9: TEdit;
    Label14: TLabel;
    Label15: TLabel;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit4: TEdit;
    MaskEdit2: TMaskEdit;
    MaskEdit5: TMaskEdit;
    Edit5: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Edit3: TEdit;
    BitBtn2: TBitBtn;
    Edit6: TEdit;
    Edit7: TEdit;
    Q: TQuery;
    Query1: TQuery;
    Query2: TQuery;
    Query3: TQuery;
    RvProject1: TRvProject;
    RvQueryConnection1: TRvQueryConnection;
    IssueYearEdit: TEdit;


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
    procedure IssueYearEditKeyDown(Sender: TObject; var Key: Word;
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
    procedure Edit10KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
   number1:integer;

  procedure DelOrInsert(InsOrDel:string;var Query:TQuery);
  function GetOID(dbname:string;var Query:TQuery):integer;

  function GetSnum(dbname:string;var Query:TQuery;notd:integer):integer;

  procedure InsertInBooks( Dbname:string;var Query:TQuery;snum:integer;notd:integer;avt:string;naz:string;
dizd:integer;datepr:TDate;komm:string;cena:integer;
pc:integer;now:integer;kol:integer;who:integer;otkr:integer; oid:integer;mass:string;probe:string);

  procedure InsertInSdat( Dbname:string;var Query:TQuery;snum:integer;tel:string;fam:string;pasp:string;adr:string;notd:integer;oid:integer);



implementation

uses Unit6, PrintForm,Unit19;

{$R *.dfm}

procedure DelOrInsert(InsOrDel:string;var Query:TQuery);
begin
Query.SQL.Clear;
Query.SQL.Add(InsOrDel);
Query.ExecSQL;
end;

function GetOID(dbname:string;var Query:TQuery):integer;
                                      begin

Query.SQL.Clear;
Query.DatabaseName:=Dbname;
Query.SQL.Add('SELECT id FROM ONUMBER order by id');
Query.Open;

if Query.RecordCount <> 0 then
   begin
//ShowMessage('≈ÒÚ¸ «‡ÔËÒË');
  Query.Last;
Result:=Query.FieldByName('id').AsInteger;
   end
 else
               begin
//ShowMessage('ÕÂÚ «‡ÔËÒÂÈ');
Result:=1000007;
            end;
                                      end;

function GetSnum(dbname:string;var Query:TQuery;notd:integer):integer;
                                      begin

Query.SQL.Clear;
Query.DatabaseName:=Dbname;
Query.SQL.Add('SELECT Snum FROM BOOKS WHERE Notd='+IntToStr(notd)+'ORDER BY Snum');
Query.Open;

if Query.RecordCount <> 0 then
   begin
//ShowMessage('≈ÒÚ¸ «‡ÔËÒË');
  Query.Last;
Result:=Query.FieldByName('Snum').AsInteger;
   end
 else
               begin
//ShowMessage('ÕÂÚ «‡ÔËÒÂÈ');
case notd of
1:Result:=1000007;
2:Result:=2000154;
3:Result:=3000117;
4:Result:=4000000;
5:Result:=5000020;

          end;
               end;
                                      end;

procedure InsertInBooks( Dbname:string;var Query:TQuery;snum:integer;notd:integer;avt:string;naz:string;
dizd:integer;datepr:TDate;komm:string;cena:integer;
pc:integer;now:integer;kol:integer;who:integer;otkr:integer; oid:integer;mass:string;probe:string);
var x:integer;
begin
 x :=  GetSnum(Dbname,Query,notd)+1;
Query.SQL.Clear;
Query.DatabaseName:=Dbname;
// mfrolov 15 jan 2009

mass := SysUtils.StringReplace(mass, ',','.', [] );
// mfrolov end

Query.SQL.Add('INSERT INTO BOOKS(BNUM,SNUM,NOTD,AVTOR,NAZVAN,DATEIZD,DATEPR,COMMENT,PRICEPR,PROCENT,PROD,DATEPROD,OTPR,VOZVR,NOW,GOD,KOL,GOD1,WHO,OTKR,OID,JEW_MASS,JEW_PROBE) VALUES ');
Query.SQL.Add('(' +INtToStr(x)+ ',' +INtToStr(snum));
Query.SQL.Add(',' +INtToStr(notd)+ ',"' +avt+ '","' +naz+ '",' +INtToStr(dizd)+',"'+DateToStr(datepr)+'","' +komm+ '",' +INtToStr(cena)+ ',' +INtToStr(pc));
Query.SQL.Add(',0,"11.11.1111",0,0,' +INtToStr(now)+ ',1,' +INtToStr(kol)+ ',1,' +INtToStr(who)+','+IntToStr(otkr)+','+IntToStr(oid)+','+mass+','+probe+')');

Query.ExecSQL;

end;

procedure InsertInSdat( Dbname:string; var Query:TQuery; snum:integer; tel:string; fam:string; pasp:string; adr:string; notd:integer;oid:integer);
 var x:integer;
                begin
 x :=  GetSnum(Dbname,Query,notd)+1;
Query.SQL.Clear;
Query.DatabaseName:=Dbname;
// ShowMessage('INSERT INTO SDAT (CSDAT,SNUM,TEL,FAM,PASP,ADR,NOTD,OID) VALUES '+' (' +IntToStr(x)+ ','+IntToStr(snum)+ ',"' +tel+ '","'+fam+'","'+pasp+'","'+adr+'",'+IntToStr(notd)+ ')');
Query.SQL.Add('INSERT INTO SDAT (CSDAT,SNUM,TEL,FAM,PASP,ADR,NOTD,OID) VALUES ');
Query.SQL.Add(' (' +IntToStr(x)+ ','+IntToStr(snum)+ ',"' +tel+ '","'+fam+'","'+pasp+'","'+adr+'",'+IntToStr(notd)+ ','+ IntToStr(oid)+')');
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
IssueYearEdit.SetFocus;
end;

procedure TForm5.Edit13KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=ord(#13) then
Edit9.SetFocus;
end;

procedure TForm5.IssueYearEditKeyDown(Sender: TObject; var Key: Word;
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

procedure TForm5.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=ord(#13) then
Button4.SetFocus;
end;

procedure TForm5.MaskEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=ord(#13) then
Edit2.SetFocus;
end;


//-----------------------------------------------------------------------------------//



 //¿ “»¬¿÷»ﬂ ‘Œ–Ã€
procedure TForm5.FormActivate(Sender: TObject);
var x,x2:integer;
x1,d:string;
d1:TDate;
begin
//==========================================//Œ◊»Ÿ¿≈Ã
Edit1.Clear;
Edit12.Clear;
Edit11.Clear;
Edit4.Clear;
Edit9.Clear;
Edit13.Clear;
IssueYearEdit.Clear;
Edit5.Clear;
//MaskEdit2.Clear;
//MaskEdit5.Clear;
Edit2.Clear;
Edit1.SetFocus;


//=====================================//«¿œŒÀÕﬂ≈Ã ÕŒÃ≈–,ƒ¿“”
Edit3.Text:=IntToStr(GetSnum('INTRBASE1',Q,2)+1);
Edit6.Text:=DateToStr(Today);
end;


//-----------------------------------------------------------------------------------//




//œŒ¬“Œ–»“‹ –≈ ¬»«»“€  ÕŒœ ¿
procedure TForm5.Button2Click(Sender: TObject);
 var dp,f,p,a,t,av,n,di,u,ko,x1:string;
 c,pc,no,x,x2,x3,i:integer;
begin

Query2.SQL.Clear;
Query2.SQL.Add('SELECT * FROM SDAT WHERE Notd=2 ORDER BY Snum');
Query2.Open;

//Query1.Last;
Query2.Last;

Edit1.Text:=Query2.FieldByName('Fam').AsString;
Edit12.Text:=Query2.FieldByName('Pasp').AsString;
Edit11.Text:=Query2.FieldByname('Adr').AsString;
Edit4.Text:=Query2.FieldByName('Tel').AsString;
Edit13.SetFocus;

//=====================================//«¿œŒÀÕﬂ≈Ã ÕŒÃ≈–

Edit3.Text:=IntToStr(GetSnum('INTRBASE1',Q,2)+1);




end;

//-----------------------------------------------------------------------------------//



   //—Œ’–¿Õ»“‹
procedure TForm5.Button4Click(Sender: TObject);
  var f,p,a,t,av,n,u,ko,x1,dp1,d,snum1,pasp:string;
 c,pc,no,x,x2,x3,i,di,nw,snum4,who,snum:integer;
 ii:integer;
 Zan:Boolean;
 label K,Nf;

begin


//============================//  ƒŒ¡¿¬Àﬂ≈Ã ÕŒ¬”ﬁ «¿œ»—‹
//ÃÂı‡ÌËÁÏ —Œ’–¿Õ»“‹
//dp:=Today;
dp1:=DateToStr(Today);
f:=Edit1.Text;
p:=Edit12.Text;
a:=Edit11.Text;
t:=Edit4.Text;
av:=Edit9.Text;
n:=Edit13.Text;

if(IssueYearEdit.Text='')then di:=0 else di:=StrToInt(IssueYearEdit.Text);
c:=StrToInt(Edit5.Text);
pc:=StrToInt(MaskEdit2.Text);
nw:=StrToInt(MaskEdit5.Text);
ko:=Edit2.Text;
who:=StrToInt(Edit7.Text);

try
snum:=GetSnum('INTRBASE1',Q,2)+1;

InsertInBooks('INTRBASE1',Q,snum,2,av,n,di,Today,ko,c,pc,nw,1,who,7,-1,'-1','-1');

InsertInSdat('INTRBASE1',Q,snum,t,f,p,a,2,-1);


     except
begin

ShowMessage('Œ¯Ë·Í‡ ‚Ó ‚ÌÂÒÂÌËË ÒÚÓÍË!!');
raise;
end;
     end;
     
Edit1.Clear;
Edit12.Clear;
Edit11.Clear;
Edit4.Clear;
Edit9.Clear;
Edit13.Clear;
Edit5.Clear;
MaskEdit5.Clear;
Edit2.Clear;
//=====================================//«¿œŒÀÕﬂ≈Ã ÕŒÃ≈–,ƒ¿“”

Edit3.Text:=IntToStr(GetSnum('INTRBASE1',Q,2)+1);
Edit1.SetFocus;
Edit6.Text:=DateToStr(Today);
number1:=StrToInt(Edit3.Text);

//------------------------------------------------------------------------------------------------------------------------------//
//Œ“◊≈“-œ≈◊¿“‹

Query3.SQL.Clear;
Query3.SQL.Add('SELECT a.Snum,b.Fam,b.Adr,b.Pasp,a.Avtor,a.Nazvan,a.Dateizd,a.Pricepr,(a.Procent*a.Pricepr*0.01-a.Pricepr)*(-1),a.Datepr,b.Tel,a.Procent,a.comment,a.who');
Query3.SQL.Add('FROM  BOOKS a, SDAT b');
Query3.SQL.Add('WHERE a.Snum=b.Snum AND a.Snum='+IntToStr(StrToInt(Edit3.Text)-1));

RvProject1.Open;
RvProject1.Execute;
RvProject1.Close;

end;


//-----------------------------------------------------------------------------------//


//Œ◊»—“»“‹
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
IssueYearEdit.Clear;
Edit5.Clear;
//MaskEdit2.Clear;
//MaskEdit5.Clear;
Edit2.Clear;


//=====================================//«¿œŒÀÕﬂ≈Ã ÕŒÃ≈–,ƒ¿“”
 Edit3.Text:=IntToStr(GetSnum('INTRBASE1',Q,2)+1);
 Edit1.SetFocus;
 Edit6.Text:=DateToStr(Today);

end;



//-----------------------------------------------------------------------------------//


procedure TForm5.Edit10KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=ord(#13) then
Edit5.SetFocus;
end;

end.
