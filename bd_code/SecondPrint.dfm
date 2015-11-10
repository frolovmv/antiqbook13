object Form6: TForm6
  Left = 1
  Top = 0
  Width = 1022
  Height = 734
  Caption = #1055#1054#1042#1058#1054#1056#1053#1040#1071' '#1055#1045#1063#1040#1058#1068' '#1050#1042#1048#1058#1040#1053#1062#1048#1049
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Palatino Linotype'
  Font.Style = [fsBold]
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 22
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 729
    Height = 553
    TabOrder = 0
    TitleFont.Charset = RUSSIAN_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Palatino Linotype'
    TitleFont.Style = [fsBold]
  end
  object Button1: TButton
    Left = 768
    Top = 128
    Width = 225
    Height = 33
    Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1087#1086#1089#1083#1077#1076#1085#1080#1077' 10'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 792
    Top = 200
    Width = 187
    Height = 33
    Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1074#1089#1077
    TabOrder = 2
  end
  object Button3: TButton
    Left = 872
    Top = 600
    Width = 75
    Height = 25
    Caption = #1042#1099#1093#1086#1076
    TabOrder = 3
  end
  object DataSource1: TDataSource
    Left = 248
    Top = 88
  end
  object Query1: TQuery
    Left = 288
    Top = 72
  end
  object RvPrSecPrn: TRvProject
    Left = 848
    Top = 256
  end
  object RvQueConSecPrn: TRvQueryConnection
    RuntimeVisibility = rtDeveloper
    Left = 880
    Top = 256
  end
  object QueSecPrn: TQuery
    Left = 880
    Top = 288
  end
  object Database1: TDatabase
    AliasName = 'INTRBASE1'
    DatabaseName = 'secprn'
    KeepConnection = False
    SessionName = 'Default'
    TransIsolation = tiDirtyRead
    Left = 784
    Top = 56
  end
end
