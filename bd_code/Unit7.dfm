object Form7: TForm7
  Left = 139
  Top = 122
  Width = 822
  Height = 458
  Caption = #1042#1074#1086#1076' '#1087#1088#1086#1076#1072#1085#1085#1099#1093' '#1082#1085#1080#1075
  Color = clActiveBorder
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
    Top = 176
    Width = 431
    Height = 16
    Caption = '1.'#1042#1074#1077#1076#1080#1090#1077' '#1085#1086#1084#1077#1088' '#1082#1074#1080#1090#1072#1085#1094#1080#1080' '#1087#1088#1086#1076#1072#1085#1086#1075#1086' '#1090#1086#1074#1072#1088#1072':'
    Color = clActiveBorder
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Courier'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label2: TLabel
    Left = 240
    Top = 8
    Width = 116
    Height = 22
    Caption = #1058#1077#1082#1091#1097#1072#1103' '#1076#1072#1090#1072':'
    Color = clSkyBlue
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 232
    Width = 671
    Height = 16
    Caption = 
      '2.'#1055#1088#1086#1074#1077#1088#1100#1090#1077' '#1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1080#1077' '#8470' '#1082#1074#1080#1090#1072#1085#1094#1080#1080' '#1090#1086#1074#1072#1088#1091', '#1085#1072#1078#1072#1074' '#1082#1085#1086#1087#1082#1091' '#1055#1056#1054#1042#1045#1056 +
      #1048#1058#1068
    Color = clActiveBorder
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Courier'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 288
    Width = 551
    Height = 16
    Caption = '3.'#1045#1089#1083#1080' '#1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1080#1077' '#1091#1089#1090#1072#1085#1086#1074#1083#1077#1085#1086', '#1085#1072#1078#1084#1080#1090#1077' '#1082#1085#1086#1087#1082#1091' '#1055#1056#1054#1044#1040#1058#1068
    Color = clActiveBorder
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Courier'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Button1: TButton
    Left = 680
    Top = 360
    Width = 113
    Height = 49
    Caption = 'B'#1099#1093#1086#1076
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 80
    Width = 761
    Height = 81
    DataSource = DataSource1
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
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
        Title.Alignment = taCenter
        Title.Caption = #1053#1086#1084#1077#1088
        Width = 62
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Avtor'
        Title.Alignment = taCenter
        Title.Caption = 'A'#1074#1090#1086#1088
        Width = 170
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nazvan'
        Title.Alignment = taCenter
        Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
        Width = 239
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Dateizd'
        Title.Alignment = taCenter
        Title.Caption = #1044#1040#1058#1040' '#1048#1047#1044#1040#1053#1048#1071
        Width = 94
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'Pricepr'
        Title.Alignment = taCenter
        Title.Caption = #1062#1077#1085#1072
        Width = 81
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Datepr'
        Title.Alignment = taCenter
        Title.Caption = #1044#1040#1058#1040' '#1055#1056#1048#1045#1052#1050#1048
        Width = 89
        Visible = True
      end>
  end
  object Edit2: TEdit
    Left = 240
    Top = 32
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 2
  end
  object BitBtn1: TBitBtn
    Left = 680
    Top = 272
    Width = 113
    Height = 49
    Caption = #1055#1088#1086#1076#1072#1090#1100
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object MaskEdit1: TMaskEdit
    Left = 448
    Top = 168
    Width = 98
    Height = 30
    EditMask = '!0000000;1;+'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    MaxLength = 7
    ParentFont = False
    TabOrder = 4
    Text = '       '
    OnKeyDown = MaskEdit1KeyDown
  end
  object Button2: TButton
    Left = 680
    Top = 208
    Width = 113
    Height = 49
    Caption = #1055#1088#1086#1074#1077#1088#1080#1090#1100
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = Button2Click
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 560
    Top = 24
  end
  object Query1: TQuery
    DatabaseName = 'INTRBASE1'
    Left = 528
    Top = 24
  end
end
