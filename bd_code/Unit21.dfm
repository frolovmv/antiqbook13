object Form21: TForm21
  Left = 116
  Top = 139
  Width = 870
  Height = 600
  Caption = 'TEXT Values'
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Times New Roman'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 40
    Top = 160
    Width = 211
    Height = 21
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1087#1088#1086#1076#1072#1078#1085#1091#1102' '#1089#1091#1084#1084#1091':'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 40
    Top = 272
    Width = 199
    Height = 21
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1087#1086#1082#1091#1087#1085#1091#1102' '#1089#1091#1084#1084#1091':'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit4: TEdit
    Left = 40
    Top = 312
    Width = 761
    Height = 25
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnKeyDown = Edit4KeyDown
  end
  object Button1: TButton
    Left = 280
    Top = 408
    Width = 121
    Height = 33
    Caption = 'OK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 40
    Top = 32
    Width = 697
    Height = 120
    DataSource = DataSource1
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'SUM'
        Title.Caption = #1055#1056#1054#1044#1040#1046#1053#1040#1071' '#1057#1059#1052#1052#1040
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Palatino Linotype'
        Title.Font.Style = [fsBold]
        Width = 244
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COLUMN2'
        Title.Caption = #1055#1054#1050#1059#1055#1053#1040#1071' '#1057#1059#1052#1052#1040
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Palatino Linotype'
        Title.Font.Style = [fsBold]
        Width = 244
        Visible = True
      end>
  end
  object Edit3: TEdit
    Left = 40
    Top = 216
    Width = 761
    Height = 25
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnKeyDown = Edit3KeyDown
  end
  object QueryBActivate: TQuery
    DatabaseName = #1050#1085#1080#1075#1080
    SQL.Strings = (
      
        'SELECT Sum(KOL*PRICEPR ),Sum(KOL*PRICEPR )-(Sum(KOL*PRICEPR )*PR' +
        'OCENT*0.01) FROM Books group by PROCENT')
    Left = 400
    Top = 96
  end
  object DataSource1: TDataSource
    DataSet = QueryBActivate
    Left = 352
    Top = 96
  end
  object Query2: TQuery
    DatabaseName = #1050#1085#1080#1075#1080
    Left = 448
    Top = 416
  end
end
