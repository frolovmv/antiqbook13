object Form4: TForm4
  Left = 1
  Top = 0
  Width = 1022
  Height = 734
  Caption = #1055#1088#1086#1089#1074#1086#1090#1088' '#1090#1072#1073#1083#1080#1094#1099' "'#1057#1076#1072#1090#1095#1080#1082#1080'"'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 1145
    Height = 761
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Csdat'
        Title.Caption = #1050#1083#1102#1095
        Width = 32
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Snum'
        Title.Caption = #1053#1086#1084#1077#1088' '#1089#1076#1072#1090#1095#1080#1082#1072
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fam'
        Title.Caption = #1060#1072#1084#1080#1083#1080#1103
        Width = 155
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Tel'
        Title.Caption = #1058#1077#1083#1077#1092#1086#1085
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Adr'
        Title.Caption = #1040#1076#1088#1077#1089
        Width = 364
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Pasp'
        Title.Caption = #1055#1072#1089#1087#1086#1088#1090
        Width = 168
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 752
    Top = 784
    Width = 75
    Height = 25
    Caption = 'B'#1099#1093#1086#1076
    TabOrder = 1
    OnClick = Button1Click
  end
  object Table1: TTable
    DatabaseName = #1050#1085#1080#1075#1080
    TableName = 'Sdat.db'
    Left = 96
    Top = 448
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 176
    Top = 448
  end
end
