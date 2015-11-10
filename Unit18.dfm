object Form18: TForm18
  Left = 21
  Top = 275
  Width = 1193
  Height = 579
  Caption = #1055#1086#1080#1089#1082' '#1090#1086#1074#1072#1088#1072
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 416
    Top = 72
    Width = 432
    Height = 22
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1085#1072#1079#1074#1072#1085#1080#1077'('#1080#1083#1080' '#1077#1075#1086' '#1095#1072#1089#1090#1100') '#1080#1089#1082#1086#1084#1086#1075#1086' '#1087#1088#1077#1076#1084#1077#1090#1072':'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 40
    Top = 72
    Width = 343
    Height = 22
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1080#1084#1103'('#1080#1083#1080' '#1077#1075#1086' '#1095#1072#1089#1090#1100')  '#1072#1074#1090#1086#1088#1072' '#1082#1085#1080#1075#1080':'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 40
    Top = 104
    Width = 345
    Height = 30
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Palatino Linotype'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnKeyPress = Edit1KeyPress
  end
  object Edit2: TEdit
    Left = 416
    Top = 104
    Width = 433
    Height = 30
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Palatino Linotype'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnKeyPress = Edit2KeyPress
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 144
    Width = 1153
    Height = 313
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Avtor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Caption = #1040#1074#1090#1086#1088
        Width = 175
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nazvan'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
        Width = 341
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Dateizd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Caption = #1044#1072#1090#1072' '#1080#1079#1076#1072#1085#1080#1103
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Snum'
        Title.Caption = #1053#1086#1084#1077#1088
        Width = 87
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Pricepr'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Palatino Linotype'
        Font.Style = [fsBold]
        Title.Caption = #1062#1077#1085#1072' '#1090#1086#1074#1072#1088#1072
        Width = 111
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Comment'
        Title.Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
        Width = 430
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 136
    Top = 480
    Width = 193
    Height = 49
    Caption = #1053#1072#1081#1090#1080
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 904
    Top = 480
    Width = 193
    Height = 49
    Caption = #1042#1099#1093#1086#1076
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = BitBtn2Click
  end
  object Query1: TQuery
    Active = True
    DatabaseName = #1050#1085#1080#1075#1080
    SQL.Strings = (
      'Select Snum,Avtor,Nazvan,Dateizd,Pricepr,Comment'
      'From ":'#1050#1085#1080#1075#1080':Books.db"'
      'Where Avtor like "R%" OR Nazvan like "FYKJI%"'
      'Order by Snum')
    Left = 376
    Top = 24
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 424
    Top = 24
  end
end
