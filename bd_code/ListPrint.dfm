object Form65: TForm65
  Left = 41
  Top = 138
  Width = 1010
  Height = 696
  Caption = #1055#1045#1063#1040#1058#1068' '#1057#1055#1048#1057#1050#1054#1042
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
    Top = 592
    Width = 105
    Height = 18
    Caption = #1042#1042#1045#1044#1048#1058#1045' '#1044#1040#1058#1059
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 256
    Top = 592
    Width = 132
    Height = 18
    Caption = #1042#1067#1041#1048#1056#1048#1058#1045' '#1054#1058#1044#1045#1051':'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button1: TButton
    Left = 568
    Top = 624
    Width = 97
    Height = 25
    Caption = #1055#1045#1063#1040#1058#1068
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 728
    Top = 624
    Width = 75
    Height = 25
    Caption = #1042#1067#1061#1054#1044
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = Button2Click
  end
  object ComboBox1: TComboBox
    Left = 256
    Top = 616
    Width = 201
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Text = #1058#1042#1045#1056#1044#1067#1049' '#1057#1063#1045#1058'('#1054#1058#1050#1056#1067#1058#1050#1048')'
    OnChange = ComboBox1Change
    Items.Strings = (
      #1058#1042#1045#1056#1044#1067#1049' '#1057#1063#1045#1058'('#1054#1058#1050#1056#1067#1058#1050#1048')'
      #1050#1053#1048#1043#1048
      #1050#1054#1052#1048#1057#1057#1048#1054#1053#1053#1067#1049' '#1054#1058#1044#1045#1051
      #1070#1042#1045#1051#1048#1056#1053#1067#1049' '#1054#1058#1044#1045#1051)
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 8
    Width = 969
    Height = 561
    DataSource = DataSource1
    TabOrder = 3
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
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Palatino Linotype'
        Font.Style = []
        Title.Caption = #1053#1086#1084#1077#1088
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Avtor'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Palatino Linotype'
        Font.Style = [fsBold]
        Title.Caption = #1040#1074#1090#1086#1088
        Width = 190
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nazvan'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Palatino Linotype'
        Font.Style = [fsBold]
        Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
        Width = 342
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Dateizd'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Palatino Linotype'
        Font.Style = [fsBold]
        Title.Caption = #1044#1072#1090#1072' '#1048#1079#1076#1072#1085#1080#1103
        Width = 97
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'Pricepr'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Palatino Linotype'
        Font.Style = [fsBold]
        Title.Caption = #1062#1077#1085#1072
        Width = 116
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Datepr'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Palatino Linotype'
        Font.Style = []
        Title.Caption = #1044#1072#1090#1072' '#1055#1088#1080#1077#1084#1082#1080
        Width = 98
        Visible = True
      end>
  end
  object MaskEdit1: TMaskEdit
    Left = 48
    Top = 616
    Width = 129
    Height = 26
    EditMask = '!99/99/0000;1;+'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    MaxLength = 10
    ParentFont = False
    TabOrder = 4
    Text = '  .  .    '
  end
  object Query1: TQuery
    DatabaseName = 'INTRBASE1'
    SQL.Strings = (
      'SELECT o.id,sum(Pricepr*Kol) From Books b, Onumber o '
      'WHERE   Notd=1  AND Datepr='#39'07.10.2006'#39' and o.id = b.oid '
      'group by o.id'
      '')
    Left = 304
    Top = 272
  end
  object DataSource1: TDataSource
    Left = 176
    Top = 240
  end
  object PrnLstPr: TRvProject
    ProjectFile = 'C:\BD_ANTIQ\ListPrint.rav'
    Left = 304
    Top = 208
  end
  object QueConnLstPr: TRvQueryConnection
    RuntimeVisibility = rtDeveloper
    Query = Query1
    Left = 304
    Top = 240
  end
  object RvQueConDate: TRvQueryConnection
    RuntimeVisibility = rtDeveloper
    Query = QueDate
    Left = 344
    Top = 240
  end
  object QueDate: TQuery
    DatabaseName = 'INTRBASE1'
    SQL.Strings = (
      'Select distinct Datepr from Books where Datepr='#39'11.03.2006'#39' ')
    Left = 344
    Top = 272
  end
  object RvQueConListSum: TRvQueryConnection
    RuntimeVisibility = rtDeveloper
    Query = QueListSum
    Left = 384
    Top = 240
  end
  object QueListSum: TQuery
    DatabaseName = 'INTRBASE1'
    SQL.Strings = (
      'SELECT sum(o.price) '
      'From Books b, Onumber o '
      'WHERE   Notd=1 AND Datepr='#39'07.10.2006'#39' and'
      'o.id=b.oid'
      '')
    Left = 384
    Top = 272
  end
  object RvQueConAvtor: TRvQueryConnection
    RuntimeVisibility = rtDeveloper
    Query = QueryAvtor
    Left = 456
    Top = 248
  end
  object QueryAvtor: TQuery
    DatabaseName = 'INTRBASE1'
    Left = 456
    Top = 288
  end
end
