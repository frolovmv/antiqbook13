unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdFTP, Buttons, IdAntiFreezeBase,
  IdAntiFreeze, IdIntercept, IdLogBase, IdLogDebug;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    edServName: TEdit;
    Label2: TLabel;
    edCliName: TEdit;
    Label3: TLabel;
    edPassword: TEdit;
    Panel1: TPanel;
    Panel2: TPanel;
    Splitter1: TSplitter;
    BitBtn1: TBitBtn;
    IdFTP1: TIdFTP;
    Button1: TButton;
    lsbFolder: TListBox;
    lsbStatus: TListBox;
    Splitter2: TSplitter;
    IdAntiFreeze1: TIdAntiFreeze;
    IdLogDebug1: TIdLogDebug;
    cbShowStatus: TCheckBox;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    gbFile: TGroupBox;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    procedure Button1Click(Sender: TObject);
    procedure IdFTP1Status(axSender: TObject; const axStatus: TIdStatus;
      const asStatusText: String);
    procedure IdLogDebug1LogItem(ASender: TComponent; var AText: String);
    procedure cbShowStatusClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
    function GetFileName(S: String): String;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
// Соединение с сервером
begin
  if IdFTP1.Connected then
  begin
    IdFTP1.Disconnect;
    lsbFolder.Items.Clear;
    Button1.Caption := 'Соединить';
    gbFile.Enabled := False
  end else begin
    try
      IdFtp1.Host := edServName.Text;
      IdFTP1.Username := edCliName.Text;
      IdFtp1.Password := edPassword.Text;
      IdFTP1.Connect;
      Button1.Caption := 'Отсоединить';
    except
      ShowMessage('Нет связи с сервером!');
      Exit
    end;
   // IdFTP1.TransferType := ftASCII;
    lsbFolder.Items.Add(IdFTP1.RetrieveCurrentDir);
    IdFTP1.List(lsbFolder.Items);
    gbFile.Enabled := True
  end
end;

procedure TForm1.IdFTP1Status(axSender: TObject; const axStatus: TIdStatus;
  const asStatusText: String);
begin
  lsbStatus.ItemIndex := lsbStatus.Items.Add(asStatustext)
end;

procedure TForm1.IdLogDebug1LogItem(ASender: TComponent;
  var AText: String);
begin
  lsbStatus.ItemIndex := lsbStatus.Items.Add(AText)
end;

procedure TForm1.cbShowStatusClick(Sender: TObject);
begin
  lsbStatus.Visible := cbShowStatus.Checked;
  Splitter2.Visible := cbShowStatus.Checked
end;

procedure TForm1.Button2Click(Sender: TObject);
// Выгрузка файла
var
  Name: String;
begin
  if lsbFolder.ItemIndex>=0 then
  begin   // Если выбран файл в списке:
    Name := GetFileName(lsbFolder.Items[lsbFolder.ItemIndex]);
    SaveDialog1.FileName := Name;
    if SaveDialog1.Execute then
      IdFTP1.Get(Name, SaveDialog1.FileName, True);
  end
end;

function TForm1.GetFileName(S: String): String;
// Выделяет из описания файла его имя
var
  k: Integer;
begin
  Result := '';
  for k := Length(S) downto 1 do
    if S[k]=' ' then break
    else Result := S[k]+Result
end;

procedure TForm1.Button3Click(Sender: TObject);
// Загрузка файла
var
  Name: String;
begin
  if OpenDialog1.Execute then
  begin
   Name := OpenDialog1.FileName;
    // Name := OpenDialog1.InitialDir;
    while pos('\', Name)<>0 do
      delete(Name,1,pos('\', Name));
    IdFtp1.Put(OpenDialog1.FileName,Name);
   //  IdFtp1.Put(OpenDialog1.InitialDir,Name);
    lsbFolder.Items.Clear;   // ОЧИСТКА БОЛЬШОГО ОКНА
    IdFTP1.List(lsbFolder.Items);
  end;
end;

procedure TForm1.Button4Click(Sender: TObject);
// Удаление файла
var
  Name: String;
begin
  if lsbFolder.ItemIndex>=0 then
  begin
    Name := GetFileName(lsbFolder.Items[lsbFolder.ItemIndex]);
    if MessageDlg('Вы действительно хотите удалить файл '+Name+'?',
      mtError,[mbYes, mbNo],0)=mrYes then
    begin
      IdFtp1.Delete(Name);
      lsbFolder.Items.Clear;
      IdFTP1.List(lsbFolder.Items);
    end
  end
end;

end.
