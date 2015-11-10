object Form15: TForm15
  Left = 0
  Top = 49
  Width = 1017
  Height = 640
  Caption = #1050#1085#1080#1075#1080' '#1080' '#1080#1079#1076#1077#1083#1080#1103' '#1076#1083#1103' '#1086#1090#1087#1088#1072#1074#1082#1080' '#1085#1072' '#1089#1072#1081#1090
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 88
    Top = 32
    Width = 801
    Height = 425
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
        FieldName = 'Avtor'
        Title.Caption = #1040#1074#1090#1086#1088
        Width = 124
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nazvan'
        Title.Caption = ' '#1053#1072#1079#1074#1072#1085#1080#1077
        Width = 285
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Snum'
        Title.Caption = #1053#1086#1084#1077#1088
        Width = 103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Notd'
        Title.Caption = #1053#1086#1084#1077#1088' '#1086#1090#1076#1077#1083#1072
        Width = 77
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Pricepr'
        Title.Caption = #1062#1077#1085#1072
        Width = 121
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'God'
        Title.Caption = #1043#1086#1076#1085#1072' '#1083#1080'?'
        Width = 68
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 376
    Top = 128
    Width = 1
    Height = 33
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object BitBtn1: TBitBtn
    Left = 576
    Top = 512
    Width = 75
    Height = 25
    Caption = #1042#1085#1080#1079
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 856
    Top = 528
    Width = 75
    Height = 25
    Caption = #1042#1099#1093#1086#1076
    TabOrder = 3
    OnClick = BitBtn2Click
  end
  object DBRadioGroup1: TDBRadioGroup
    Left = 176
    Top = 496
    Width = 185
    Height = 105
    Caption = #1043#1086#1076#1077#1085' '#1083#1080' '#1082' '#1086#1090#1087#1088#1072#1074#1082#1077' '#1085#1072' '#1089#1072#1081#1090
    DataField = 'God'
    DataSource = DataSource1
    Items.Strings = (
      #1043#1086#1076#1077#1085
      #1053#1077' '#1043#1086#1076#1077#1085)
    TabOrder = 4
    Values.Strings = (
      'True'
      'False')
  end
  object BitBtn3: TBitBtn
    Left = 456
    Top = 520
    Width = 75
    Height = 25
    Caption = #1053#1077' '#1075#1086#1076#1077#1085
    TabOrder = 5
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 688
    Top = 520
    Width = 75
    Height = 25
    Caption = 'B'#1074#1077#1088#1093
    TabOrder = 6
    OnClick = BitBtn4Click
  end
  object BitBtn5: TBitBtn
    Left = 744
    Top = 480
    Width = 75
    Height = 25
    Caption = 'B'#1089#1103' '#1073#1072#1079#1072
    TabOrder = 7
    OnClick = BitBtn5Click
  end
  object BitBtn6: TBitBtn
    Left = 488
    Top = 568
    Width = 75
    Height = 25
    Caption = #1043#1086#1076#1077#1085
    TabOrder = 8
    OnClick = BitBtn6Click
  end
  object DataSource1: TDataSource
    Left = 56
    Top = 128
  end
  object Query1: TQuery
    Left = 56
    Top = 80
  end
  object Table1: TTable
    DatabaseName = 'INTRBASE1'
    TableName = 'BOOKS'
    Left = 56
    Top = 40
  end
end
