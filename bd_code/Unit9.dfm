object Form9: TForm9
  Left = 1
  Top = 0
  Width = 1022
  Height = 734
  Caption = #1055#1077#1088#1077#1086#1094#1077#1085#1082#1072
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
    Left = 8
    Top = 192
    Width = 201
    Height = 16
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1085#1086#1084#1077#1088' '#1082#1074#1080#1090#1072#1085#1094#1080#1080':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 40
    Top = 256
    Width = 159
    Height = 16
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1085#1086#1074#1091#1102' '#1094#1077#1085#1091':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 32
    Top = 64
    Width = 889
    Height = 73
    DataSource = DataSource1
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Snum'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = #8470' '#1050#1042#1048#1058#1040#1053#1062#1048#1048
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Avtor'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = #1040#1042#1058#1054#1056
        Width = 178
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nazvan'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = #1053#1040#1047#1042#1040#1053#1048#1045
        Width = 330
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Dateizd'
        Title.Alignment = taCenter
        Title.Caption = #1044#1040#1058#1040' '#1048#1047#1044#1040#1053#1048#1071
        Width = 93
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'Pricepr'
        Title.Alignment = taCenter
        Title.Caption = #1062#1045#1053#1040
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Datepr'
        Title.Alignment = taCenter
        Title.Caption = #1044#1040#1058#1040' '#1055#1056#1048#1045#1052#1050#1048
        Width = 94
        Visible = True
      end>
  end
  object Edit2: TEdit
    Left = 216
    Top = 248
    Width = 121
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object MaskEdit1: TMaskEdit
    Left = 216
    Top = 192
    Width = 120
    Height = 28
    EditMask = '!0000000;1;+'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 7
    ParentFont = False
    TabOrder = 2
    Text = '       '
    OnKeyDown = MaskEdit1KeyDown
  end
  object BitBtn1: TBitBtn
    Left = 360
    Top = 368
    Width = 145
    Height = 33
    Caption = #1054#1092#1086#1088#1084#1080#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 144
    Top = 368
    Width = 145
    Height = 33
    Caption = #1055#1088#1086#1074#1077#1088#1080#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 696
    Top = 400
    Width = 145
    Height = 65
    Caption = #1042#1099#1093#1086#1076
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = BitBtn3Click
  end
  object Query1: TQuery
    SQL.Strings = (
      'SELECT Snum,Avtor,Nazvan,Dateizd,Comment,Pricepr,Datepr'
      'FROM '#39':spereocenka:Books.db'#39' WHERE Prod=False and Vozvr=False '
      'and Snum=2000001')
    Left = 512
    Top = 24
  end
  object DataSource1: TDataSource
    Left = 544
    Top = 24
  end
end
