object FPrint: TFPrint
  Left = 0
  Top = 0
  Width = 1036
  Height = 780
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
    Left = 424
    Top = 496
    Width = 75
    Height = 25
    Caption = #1055#1077#1095#1072#1090#1100
    TabOrder = 0
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 969
    Height = 425
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Edit1: TEdit
    Left = 112
    Top = 472
    Width = 121
    Height = 21
    TabOrder = 2
    Text = '2000003'
  end
  object Button2: TButton
    Left = 288
    Top = 496
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 3
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 560
    Top = 176
  end
  object Query1: TQuery
    SQL.Strings = (
      
        'SELECT DISTINCT a.Snum,b.Fam,b.Adr,b.Pasp,a.Avtor,a.Nazvan,a.Dat' +
        'eizd,a.Pricepr,(a.Procent*a.Pricepr*0.01-a.Pricepr)*(-1),a.Datep' +
        'r,b.Tel,a.Procent'
      'FROM  ":w:Books.db"  a, ":w:Sdat.db"  b'
      'WHERE a.Snum=B.Snum AND a.Snum=2000002')
    Left = 56
    Top = 504
  end
  object Database1: TDatabase
    AliasName = 'INTRBASE1'
    DatabaseName = 'w'
    SessionName = 'Default'
    TransIsolation = tiDirtyRead
    Left = 600
    Top = 168
  end
  object RvProject1: TRvProject
    ProjectFile = 'C:\'#1041#1040#1047#1040' '#1044#1040#1053#1053#1067#1061' '#1040#1053#1058#1048#1050#1042#1040#1056' '#1050#1051#1048#1045#1053#1058'\ProjectKnigiKvitanc.rav'
    Left = 64
    Top = 464
  end
  object RvQueryConnection1: TRvQueryConnection
    RuntimeVisibility = rtDeveloper
    Query = Query1
    Left = 32
    Top = 464
  end
end
