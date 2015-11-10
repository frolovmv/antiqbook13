unit Books;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, ExtCtrls, jpeg, Buttons, DB, DBTables;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button8: TButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    BitBtn6: TBitBtn;
    BitBtn5: TBitBtn;
    Button7: TButton;
    Button10: TButton;
    Label7: TLabel;
    Button11: TButton;
    backupDbButton: TButton;
    backupQueryComp: TQuery;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure backupDbButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;


implementation

uses Unit2, Knigi, Unit7, Unit8, Unit9, Unit10, OtkritkiOtd, Unit12, KomissiaOtd,
  Unit14,Unit17, Unit18, ListPrint, Unit6, Unit20, JewellerDivisionForm;

{$R *.dfm}
procedure ClearTable( Dbname:string; var Query:TQuery; TableName:string);
                begin
Query.SQL.Clear;
Query.DatabaseName:=Dbname;
Query.SQL.Add('DELETE FROM '+TableName);
Query.ExecSQL;
                end;
procedure CopyTable( Dbname:string; var Query:TQuery; SrcTableName:string; TrgTableName:string);
                begin
Query.SQL.Clear;
Query.DatabaseName:=Dbname;
Query.SQL.Add('INSERT INTO '+TrgTableName+'  SELECT * FROM ' + SrcTableName);
Query.ExecSQL;
                end;

procedure TForm1.Button1Click(Sender: TObject);
begin
Form1.Close;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Form2.ShowModal;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
Form11.ShowModal;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
Form7.ShowModal;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
Form8.ShowModal;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
Form9.ShowModal;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
Form6.ShowModal;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
Form10.ShowModal;
end;

procedure TForm1.BitBtn4Click(Sender: TObject);
begin
Form12.ShowModal;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin

Form5.ShowModal;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
Form13.ShowModal;
end;



procedure TForm1.BitBtn1Click(Sender: TObject);
begin
Form14.ShowModal;
end;

procedure TForm1.BitBtn6Click(Sender: TObject);
begin
Form18.ShowModal;
end;

procedure TForm1.BitBtn5Click(Sender: TObject);
begin
Form65.ShowModal;
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
Form20.ShowModal;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
Form30.ShowModal;
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
Form30.ShowModal;
end;

procedure TForm1.backupDbButtonClick(Sender: TObject);
begin
// ����������� ��� �� ������:
// Books, Sdat, Pricestr, Onumber � �������
// Books_Backup, Sdat_Backup, Priestr_Backup, Onumber_Backup

ClearTable('INTRBASE1', backupQueryComp, 'Books_Backup' );
ClearTable('INTRBASE1', backupQueryComp, 'Sdat_Backup' );
ClearTable('INTRBASE1', backupQueryComp, 'Pricestr_Backup' );
ClearTable('INTRBASE1', backupQueryComp, 'Onumber_Backup' );
CopyTable('INTRBASE1', backupQueryComp, 'Books','Books_Backup' );
CopyTable('INTRBASE1', backupQueryComp, 'Sdat','Sdat_Backup' );
CopyTable('INTRBASE1', backupQueryComp, 'Pricestr','Pricestr_Backup' );
CopyTable('INTRBASE1', backupQueryComp, 'Onumber','Onumber_Backup' );
ShowMessage('������ ������� �����������, ������ ����� �������!');
end;

end.