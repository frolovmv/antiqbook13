object Form10: TForm10
  Left = 41
  Top = 174
  Width = 894
  Height = 481
  Caption = #1042#1086#1079#1074#1088#1072#1090
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
    Left = 104
    Top = 88
    Width = 5
    Height = 16
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 168
    Width = 382
    Height = 22
    Caption = '1.'#1042#1074#1077#1076#1080#1090#1077' '#1085#1086#1084#1077#1088' '#1082#1074#1080#1090#1072#1085#1094#1080#1080' '#1087#1088#1086#1076#1072#1085#1086#1075#1086' '#1090#1086#1074#1072#1088#1072':'
    Color = clBtnFace
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label3: TLabel
    Left = 168
    Top = 16
    Width = 143
    Height = 22
    Caption = #1058#1045#1050#1059#1065#1040#1071' '#1044#1040#1058#1040':'
    Color = clSkyBlue
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 240
    Width = 613
    Height = 22
    Caption = 
      '2.'#1055#1088#1086#1074#1077#1088#1100#1090#1077' '#1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1080#1077' '#8470' '#1082#1074#1080#1090#1072#1085#1094#1080#1080' '#1090#1086#1074#1072#1088#1091', '#1085#1072#1078#1072#1074' '#1082#1085#1086#1087#1082#1091' '#1055#1056#1054#1042#1045#1056 +
      #1048#1058#1068
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 8
    Top = 304
    Width = 530
    Height = 22
    Caption = '3.'#1045#1089#1083#1080' '#1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1080#1077' '#1091#1089#1090#1072#1085#1086#1074#1083#1077#1085#1086', '#1085#1072#1078#1084#1080#1090#1077' '#1082#1085#1086#1087#1082#1091' '#1042#1054#1047#1042#1056#1040#1058#1048#1058#1068
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 80
    Width = 873
    Height = 73
    DataSource = DataSource1
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
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
        Title.Alignment = taCenter
        Title.Caption = #1053#1086#1084#1077#1088
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Avtor'
        Title.Alignment = taCenter
        Title.Caption = #1040#1074#1090#1086#1088
        Width = 158
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nazvan'
        Title.Alignment = taCenter
        Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
        Width = 320
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Dateizd'
        Title.Alignment = taCenter
        Title.Caption = #1044#1040#1058#1040' '#1048#1047#1044#1040#1053#1048#1071
        Width = 99
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'Pricepr'
        Title.Alignment = taCenter
        Title.Caption = #1062#1077#1085#1072
        Width = 105
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Datepr'
        Title.Alignment = taCenter
        Title.Caption = #1044#1040#1058#1040' '#1055#1056#1048#1045#1052#1050#1048
        Width = 90
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 640
    Top = 376
    Width = 129
    Height = 57
    Caption = #1042#1099#1093#1086#1076
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 640
    Top = 288
    Width = 129
    Height = 57
    Caption = #1042#1086#1079#1074#1088#1072#1090#1080#1090#1100
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Button2Click
  end
  object Edit2: TEdit
    Left = 168
    Top = 40
    Width = 129
    Height = 21
    Enabled = False
    TabOrder = 3
  end
  object MaskEdit1: TMaskEdit
    Left = 400
    Top = 168
    Width = 118
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
  object Button3: TButton
    Left = 640
    Top = 208
    Width = 129
    Height = 57
    Caption = #1055#1088#1086#1074#1077#1088#1080#1090#1100
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = Button3Click
  end
  object Query1: TQuery
    Left = 512
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 568
  end
end
