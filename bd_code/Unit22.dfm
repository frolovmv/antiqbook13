object Form22: TForm22
  Left = 141
  Top = 65
  Width = 870
  Height = 640
  Caption = 'TEXT-HANDLE FORM'
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Palatino Linotype'
  Font.Style = [fsBold]
  OldCreateOrder = False
  WindowState = wsMaximized
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 21
  object Label1: TLabel
    Left = 32
    Top = 136
    Width = 211
    Height = 21
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1087#1088#1086#1076#1072#1078#1085#1091#1102' '#1089#1091#1084#1084#1091':'
  end
  object Label2: TLabel
    Left = 32
    Top = 216
    Width = 199
    Height = 21
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1087#1086#1082#1091#1087#1085#1091#1102' '#1089#1091#1084#1084#1091':'
  end
  object BitBtn1: TBitBtn
    Left = 312
    Top = 456
    Width = 177
    Height = 41
    Caption = 'OK'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object DBGrid1: TDBGrid
    Left = 40
    Top = 24
    Width = 769
    Height = 89
    DataSource = DataSource1
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Palatino Linotype'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'SUM'
        Title.Caption = #1055#1056#1054#1044#1040#1046#1053#1040#1071' '#1062#1045#1053#1040
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Palatino Linotype'
        Title.Font.Style = [fsBold]
        Width = 189
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COLUMN2'
        Title.Caption = #1055#1054#1050#1059#1055#1053#1040#1071' '#1062#1045#1053#1040
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Palatino Linotype'
        Title.Font.Style = [fsBold]
        Width = 217
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 32
    Top = 168
    Width = 529
    Height = 29
    TabOrder = 2
    OnKeyDown = Edit1KeyDown
  end
  object Edit2: TEdit
    Left = 32
    Top = 256
    Width = 529
    Height = 29
    TabOrder = 3
    OnKeyDown = Edit2KeyDown
  end
  object DataSource1: TDataSource
    Left = 288
    Top = 72
  end
  object Query1: TQuery
    DatabaseName = 'INTRBASE1'
    SQL.Strings = (
      
        'SELECT DISTINCT Sum(Kol*Pricepr ),Sum(Kol*Pricepr )-(Sum(Kol*Pri' +
        'cepr )*Procent*0.01) FROM Books'
      'group by Procent')
    Left = 344
    Top = 80
  end
  object Query2: TQuery
    DatabaseName = #1050#1085#1080#1075#1080
    Left = 608
    Top = 384
  end
end