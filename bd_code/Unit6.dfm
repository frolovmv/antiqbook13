object Form6: TForm6
  Left = 149
  Top = 9
  Width = 1007
  Height = 699
  Caption = #1055#1054#1042#1058#1054#1056#1053#1040#1071' '#1055#1045#1063#1040#1058#1068' '#1050#1042#1048#1058#1040#1053#1062#1048#1049
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Palatino Linotype'
  Font.Style = [fsBold]
  OldCreateOrder = False
  WindowState = wsMaximized
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 22
  object Button1: TButton
    Left = 40
    Top = 568
    Width = 265
    Height = 33
    Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1079#1072' '#1087#1086#1089#1083#1077#1076#1085#1080#1077' 10 '#1076#1085#1077#1081
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 56
    Top = 616
    Width = 187
    Height = 33
    Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1074#1089#1077
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 424
    Top = 592
    Width = 281
    Height = 33
    Caption = #1055#1077#1095#1072#1090#1100' '#1074#1099#1073#1088#1072#1085#1085#1086#1081' '#1082#1074#1080#1090#1072#1085#1094#1080#1080
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 824
    Top = 616
    Width = 113
    Height = 33
    Caption = #1042#1099#1093#1086#1076
    TabOrder = 3
    OnClick = Button4Click
  end
  object DBGrid1: TDBGrid
    Left = 30
    Top = -8
    Width = 977
    Height = 537
    DataSource = DataSource1
    TabOrder = 4
    TitleFont.Charset = RUSSIAN_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Palatino Linotype'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'SNUM'
        Title.Caption = #1053#1086#1084#1077#1088
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AVTOR'
        Title.Caption = #1040#1074#1090#1086#1088
        Width = 213
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NAZVAN'
        Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
        Width = 371
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DATEIZD'
        Title.Caption = #1044#1072#1090#1072' '#1080#1079#1076#1072#1085#1080#1103
        Width = 126
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'PRICEPR'
        Title.Caption = #1055#1088#1086#1076#1072#1078#1085#1072#1103' '#1094#1077#1085#1072
        Width = 141
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = QueSecPrnOtkr1
    Left = 320
    Top = 152
  end
  object Query1: TQuery
    DatabaseName = 'INTRBASE1'
    RequestLive = True
    Left = 320
    Top = 120
  end
  object RvPrSecPrn: TRvProject
    ProjectFile = 'C:\BD_ANTIQ\KomissiaPrint.rav'
    Left = 376
    Top = 280
  end
  object RvQueConSecPrnKngKomm: TRvQueryConnection
    RuntimeVisibility = rtDeveloper
    Query = QueSecPrnKngKomm
    Left = 432
    Top = 320
  end
  object QueSecPrnKngKomm: TQuery
    DatabaseName = 'INTRBASE1'
    SQL.Strings = (
      
        'SELECT a.Snum,b.Fam,b.Adr,b.Pasp,a.Avtor,a.Nazvan,a.Dateizd,a.Pr' +
        'icepr,a.Pricepr-a.Procent*a.Pricepr*0.01,'
      'a.Datepr,b.Tel,a.Procent,a.comment'
      'FROM  Books a, Sdat b'
      'WHERE a.Snum=b.Snum AND a.Snum=3000001')
    Left = 432
    Top = 360
  end
  object QueSecPrnOtkr1: TQuery
    DatabaseName = 'INTRBASE1'
    SQL.Strings = (
      'SELECT Datepr,Nazvan,Pricepr,Kol,Kol*Pricepr FROM Books'
      'WHERE Otkr=(SELECT DISTINCT otkr FROM Books WHERE Snum=3000033)')
    Left = 472
    Top = 360
  end
  object RvQueConSecPrnOtkr1: TRvQueryConnection
    RuntimeVisibility = rtDeveloper
    Query = QueSecPrnOtkr1
    Left = 472
    Top = 320
  end
  object RvQueConSecPrnOtkr2: TRvQueryConnection
    RuntimeVisibility = rtDeveloper
    Query = QueSecPrnOtkr2
    Left = 512
    Top = 320
  end
  object QueSecPrnOtkr2: TQuery
    DatabaseName = 'INTRBASE1'
    SQL.Strings = (
      
        'SELECT DISTINCT Sum(Kol),Sum(Kol*Pricepr ),Sum(Kol*Pricepr )-(Su' +
        'm(Kol*Pricepr )*Procent*0.01) FROM Books'
      
        'WHERE Otkr=(SELECT DISTINCT otkr FROM Books WHERE Snum=3000033) ' +
        ' group by Procent')
    Left = 512
    Top = 360
  end
  object QuePriceTextSecPrn: TQuery
    DatabaseName = #1050#1085#1080#1075#1080
    SQL.Strings = (
      'SELECT * FROM PriceStr')
    Left = 592
    Top = 360
  end
  object RvQueConPSecPrnrPriceText: TRvQueryConnection
    RuntimeVisibility = rtDeveloper
    Query = QuePriceTextSecPrn
    Left = 592
    Top = 320
  end
  object QueSecPrn3: TQuery
    DatabaseName = 'INTRBASE1'
    SQL.Strings = (
      'SELECT DISTINCT a.Snum,a.Fam,a.Adr , a.pasp FROM Sdat a '
      
        'WHERE a.Snum=(SELECT DISTINCT b.Otkr FROM Books b WHERE b.Snum=3' +
        '000033)')
    Left = 552
    Top = 360
  end
  object RvQueConSecPrn3: TRvQueryConnection
    RuntimeVisibility = rtDeveloper
    Query = QueSecPrn3
    Left = 552
    Top = 320
  end
  object QueSecPrnKngJew: TRvQueryConnection
    RuntimeVisibility = rtDeveloper
    Query = QueSecPrnJew
    Left = 376
    Top = 320
  end
  object QueSecPrnJew: TQuery
    DatabaseName = 'INTRBASE1'
    SQL.Strings = (
      
        'SELECT a.Snum,b.Fam,b.Adr,b.Pasp,a.Avtor,a.Nazvan,a.Dateizd,a.Pr' +
        'icepr,a.Pricepr-a.Procent*a.Pricepr*0.01,'
      'a.Datepr,b.Tel,a.Procent,a.comment,a.jew_mass,a.jew_probe'
      'FROM  Books a, Sdat b'
      'WHERE a.Snum=b.Snum AND a.Snum=5000001')
    Left = 376
    Top = 360
  end
end
