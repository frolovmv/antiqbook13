object Form18: TForm18
  Left = -27
  Top = 42
  Width = 1036
  Height = 742
  Caption = #1055#1086#1080#1089#1082' '#1090#1086#1074#1072#1088#1072
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 48
    Top = 240
    Width = 409
    Height = 22
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1085#1072#1079#1074#1072#1085#1080#1077' '#1087#1088#1077#1076#1084#1077#1090#1072' ('#1080#1083#1080' '#1095#1072#1089#1090#1100' '#1085#1072#1079#1074#1072#1085#1080#1103') :'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 48
    Top = 160
    Width = 332
    Height = 22
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1092#1072#1084#1080#1083#1080#1102' '#1072#1074#1090#1086#1088#1072' ('#1080#1083#1080' '#1077#1105' '#1095#1072#1089#1090#1100') :'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 48
    Top = 48
    Width = 812
    Height = 28
    Caption = 
      #1055#1086#1080#1089#1082' '#1087#1088#1086#1076#1072#1085#1085#1099#1093' '#1080#1083#1080' '#1074#1086#1079#1074#1088#1072#1097#1077#1085#1085#1099#1093' '#1082#1085#1080#1075' ('#1087#1088#1077#1076#1084#1077#1090#1086#1074') '#1087#1086' '#1072#1074#1090#1086#1088#1091', '#1085#1072#1079 +
      #1074#1072#1085#1080#1102':'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 48
    Top = 88
    Width = 220
    Height = 22
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1085#1086#1084#1077#1088' '#1082#1074#1080#1090#1072#1085#1094#1080#1080':'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 48
    Top = 200
    Width = 345
    Height = 30
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Palatino Linotype'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnKeyDown = Edit1KeyDown
    OnKeyPress = Edit1KeyPress
  end
  object Edit2: TEdit
    Left = 48
    Top = 272
    Width = 433
    Height = 30
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Palatino Linotype'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnKeyDown = Edit2KeyDown
    OnKeyPress = Edit2KeyPress
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 312
    Width = 982
    Height = 329
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnTitleClick = DBGrid1TitleClick
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Snum'
        Title.Alignment = taCenter
        Title.Caption = #8470' '#1082#1074#1080#1090#1072#1085#1094'.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Avtor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = #1040#1074#1090#1086#1088
        Width = 124
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
        Title.Alignment = taCenter
        Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
        Width = 228
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Dateizd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = #1044#1072#1090#1072' '#1080#1079#1076#1072#1085#1080#1103
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Pricepr'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = #1062#1077#1085#1072
        Width = 70
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Datepr'
        Title.Alignment = taCenter
        Title.Caption = #1044#1072#1090#1072' '#1087#1088#1080#1077#1084#1082#1080
        Width = 108
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Dateprod'
        Title.Alignment = taCenter
        Title.Caption = #1044#1072#1090#1072' '#1088#1077#1072#1083#1080#1079#1072#1094#1080#1080
        Width = 95
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Vozvr'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Palatino Linotype'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = #1042#1086#1079#1074#1088#1072#1090'/'#1055#1088#1086#1076#1072#1078#1072
        Width = 101
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Prod'
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 136
    Top = 648
    Width = 193
    Height = 49
    Caption = #1053#1072#1081#1090#1080
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 728
    Top = 648
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
  object Edit3: TEdit
    Left = 48
    Top = 120
    Width = 345
    Height = 30
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Palatino Linotype'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnKeyDown = Edit1KeyDown
    OnKeyPress = Edit1KeyPress
  end
  object otdSelect: TComboBox
    Left = 504
    Top = 104
    Width = 329
    Height = 28
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 20
    ParentFont = False
    TabOrder = 6
    Text = #1041#1091#1082#1080#1085#1080#1089#1090#1080#1095#1077#1089#1082#1080#1077' '#1082#1085#1080#1075#1080
    Items.Strings = (
      #1040#1085#1090#1080#1082#1074#1072#1088#1085#1099#1077' '#1082#1085#1080#1075#1080
      #1041#1091#1082#1080#1085#1080#1089#1090#1080#1095#1077#1089#1082#1080#1077' '#1082#1085#1080#1075#1080
      #1053#1091#1084#1080#1079#1084#1072#1090#1080#1082#1072
      #1040#1085#1090#1080#1082#1074#1072#1088#1080#1072#1090
      #1070#1074#1077#1083#1080#1088#1085#1099#1081' '#1086#1090#1076#1077#1083)
  end
  object Query1: TQuery
    BeforeOpen = Query1BeforeOpen
    BeforeScroll = Query1BeforeScroll
    BeforeRefresh = Query1BeforeRefresh
    OnCalcFields = Query1CalcFields
    OnNewRecord = Query1NewRecord
    SQL.Strings = (
      'Select Snum,Avtor,Nazvan,Dateizd,Pricepr,Comment'
      'From ":'#1050#1085#1080#1075#1080':Books.db"'
      'Where Avtor like "R%" OR Nazvan like "FYKJI%"'
      'Order by Snum')
    Left = 72
    Top = 616
  end
  object DataSource1: TDataSource
    Left = 488
    Top = 208
  end
end