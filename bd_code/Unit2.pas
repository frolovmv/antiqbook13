unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit3, Unit4;

{$R *.dfm}

procedure TForm2.Button3Click(Sender: TObject);
begin
Form2.Close;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
Form3.ShowModal;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
Form4.ShowModal;
end;

end.
