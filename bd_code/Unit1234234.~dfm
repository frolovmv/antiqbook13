object FPrint: TFPrint
  Left = 105
  Top = 86
  Width = 870
  Height = 600
  Caption = 'FPrint'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 280
    Top = 432
    Width = 75
    Height = 25
    Caption = #1055#1077#1095#1072#1090#1100
    TabOrder = 0
    OnClick = Button1Click
  end
  object Query1: TQuery
    SQL.Strings = (
      
        'SELECT DISTINCT a.Snum,b.Fam,b.Adr,b.Pasp,a.Avtor,a.Nazvan,a.Dat' +
        'eizd,a.Pricepr,(a.Procent*a.Pricepr*0.01-a.Pricepr)*(-1),a.Datep' +
        'r,b.Tel,a.Procent'
      'FROM  ":w:Books.db"  a, ":w:Sdat.db"  b'
      'WHERE a.Snum=B.Snum AND a.Snum=2000002')
    Left = 272
    Top = 184
  end
  object Database1: TDatabase
    AliasName = 'INTRBASE1'
    DatabaseName = 'w'
    KeepConnection = False
    SessionName = 'Default'
    TransIsolation = tiDirtyRead
    Left = 248
    Top = 96
  end
  object RvProject1: TRvProject
    ProjectFile = 'C:\'#1041#1040#1047#1040' '#1044#1040#1053#1053#1067#1061' '#1040#1053#1058#1048#1050#1042#1040#1056' '#1050#1051#1048#1045#1053#1058'\ProjectKnigiKvitanc.rav'
    Left = 248
    Top = 136
  end
  object RvQueryConnection1: TRvQueryConnection
    RuntimeVisibility = rtDeveloper
    Query = Query1
    Left = 224
    Top = 184
  end
end
