object Form20: TForm20
  Left = 95
  Top = 19
  Width = 1007
  Height = 698
  Caption = ' '#1048#1057#1055#1056#1040#1042#1051#1045#1053#1048#1045' '#1054#1064#1048#1041#1054#1050
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clBlack
  Font.Height = -15
  Font.Name = 'Palatino Linotype'
  Font.Style = [fsBold]
  OldCreateOrder = False
  WindowState = wsMaximized
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 21
  object Label1: TLabel
    Left = 8
    Top = 192
    Width = 386
    Height = 21
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#8470' '#1082#1074#1080#1090#1072#1085#1094#1080#1080', '#1082#1086#1090#1086#1088#1091#1102' '#1093#1086#1090#1080#1090#1077' '#1080#1089#1087#1088#1072#1074#1080#1090#1100':'
  end
  object Label2: TLabel
    Left = 448
    Top = 176
    Width = 114
    Height = 21
    Caption = #1053#1086#1074#1099#1081' '#1040#1042#1058#1054#1056':'
  end
  object Label3: TLabel
    Left = 416
    Top = 224
    Width = 145
    Height = 21
    Caption = #1053#1086#1074#1086#1077' '#1053#1040#1047#1042#1040#1053#1048#1045':'
  end
  object Label4: TLabel
    Left = 376
    Top = 264
    Width = 186
    Height = 21
    Caption = #1053#1086#1074#1072#1103' '#1044#1040#1058#1040' '#1048#1047#1044#1040#1053#1048#1071':'
  end
  object Label5: TLabel
    Left = 376
    Top = 304
    Width = 189
    Height = 21
    Caption = #1053#1086#1074#1099#1077' '#1050#1054#1052#1052#1045#1053#1058#1040#1056#1048#1048':'
  end
  object Label6: TLabel
    Left = 456
    Top = 352
    Width = 102
    Height = 21
    Caption = #1053#1086#1074#1072#1103' '#1062#1045#1053#1040':'
  end
  object Label7: TLabel
    Left = 416
    Top = 392
    Width = 142
    Height = 21
    Caption = #1053#1086#1074#1072#1103' '#1060#1040#1052#1048#1051#1048#1071':'
  end
  object Label8: TLabel
    Left = 312
    Top = 424
    Width = 250
    Height = 21
    Caption = #1053#1086#1074#1099#1077' '#1055#1040#1057#1055#1054#1056#1058#1053#1067#1045' '#1044#1040#1053#1053#1067#1045':'
  end
  object Label9: TLabel
    Left = 440
    Top = 464
    Width = 113
    Height = 21
    Caption = #1053#1086#1074#1099#1081' '#1040#1044#1056#1045#1057':'
  end
  object jew_mass_lab: TLabel
    Left = 384
    Top = 504
    Width = 177
    Height = 21
    Caption = #1053#1086#1074#1072#1103' '#1052#1040#1057#1057#1040' ('#1075#1088#1072#1084#1084'):'
  end
  object jew_probe_lab: TLabel
    Left = 448
    Top = 544
    Width = 111
    Height = 21
    Caption = #1053#1086#1074#1072#1103' '#1055#1056#1054#1041#1040':'
  end
  object Label10: TLabel
    Left = 424
    Top = 592
    Width = 139
    Height = 21
    Caption = #1053#1086#1074#1099#1081' '#1055#1056#1054#1062#1045#1053#1058':'
  end
  object Button2: TButton
    Left = 32
    Top = 264
    Width = 185
    Height = 41
    Caption = #1055#1056#1054#1042#1045#1056#1050#1040
    TabOrder = 0
    OnClick = Button2Click
    OnKeyPress = Button2KeyPress
  end
  object Button3: TButton
    Left = 592
    Top = 616
    Width = 241
    Height = 41
    Caption = #1055#1077#1095#1072#1090#1072#1090#1100' '#1085#1086#1074#1091#1102' '#1082#1074#1080#1090#1072#1085#1094#1080#1102
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 80
    Top = 600
    Width = 185
    Height = 41
    Caption = #1042#1099#1093#1086#1076
    TabOrder = 2
    OnClick = Button4Click
  end
  object MaskEdit1: TMaskEdit
    Left = 40
    Top = 224
    Width = 120
    Height = 29
    EditMask = '!9999999;1;+'
    MaxLength = 7
    TabOrder = 3
    Text = '       '
  end
  object DBGrid: TDBGrid
    Left = 8
    Top = 16
    Width = 977
    Height = 153
    DataSource = DataSource1
    TabOrder = 4
    TitleFont.Charset = RUSSIAN_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -15
    TitleFont.Name = 'Palatino Linotype'
    TitleFont.Style = [fsBold]
    OnCellClick = DBGridCellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'Snum'
        Title.Caption = #8470
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Avtor'
        Title.Caption = #1040#1074#1090#1086#1088
        Width = 135
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nazvan'
        Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
        Width = 246
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Dateizd'
        Title.Caption = #1044#1072#1090#1072' '#1080#1079#1076#1072#1085#1080#1103
        Width = 105
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Pricepr'
        Title.Caption = #1055#1088#1086#1076#1072#1078#1085#1072#1103' '#1094#1077#1085#1072
        Width = 132
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Datepr'
        Title.Caption = #1044#1072#1090#1072' '#1087#1088#1080#1077#1084#1082#1080
        Width = 115
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fam'
        Title.Caption = #1057#1076#1072#1090#1095#1080#1082
        Width = 141
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 568
    Top = 176
    Width = 417
    Height = 29
    Enabled = False
    TabOrder = 5
    OnKeyDown = Edit1KeyDown
  end
  object Edit2: TEdit
    Left = 568
    Top = 216
    Width = 417
    Height = 29
    Enabled = False
    TabOrder = 6
    OnKeyDown = Edit2KeyDown
  end
  object Edit3: TEdit
    Left = 568
    Top = 256
    Width = 417
    Height = 29
    Enabled = False
    TabOrder = 7
    OnKeyDown = Edit3KeyDown
  end
  object Edit4: TEdit
    Left = 568
    Top = 296
    Width = 417
    Height = 29
    Enabled = False
    TabOrder = 8
    OnKeyDown = Edit4KeyDown
  end
  object Edit5: TEdit
    Left = 568
    Top = 344
    Width = 417
    Height = 29
    Enabled = False
    TabOrder = 9
    OnKeyDown = Edit5KeyDown
  end
  object Edit6: TEdit
    Left = 568
    Top = 384
    Width = 417
    Height = 29
    Enabled = False
    TabOrder = 10
    OnKeyDown = Edit6KeyDown
  end
  object jew_probe_text: TEdit
    Left = 568
    Top = 544
    Width = 417
    Height = 29
    Enabled = False
    TabOrder = 11
    OnKeyDown = jew_probe_textKeyDown
  end
  object Edit8: TEdit
    Left = 568
    Top = 464
    Width = 417
    Height = 29
    Enabled = False
    TabOrder = 12
    OnKeyDown = Edit8KeyDown
  end
  object nextButton: TButton
    Left = 32
    Top = 320
    Width = 161
    Height = 33
    Caption = #1057#1083#1077#1076#1091#1102#1097#1072#1103
    TabOrder = 13
    OnClick = nextButtonClick
  end
  object tmpSave: TButton
    Left = 200
    Top = 320
    Width = 161
    Height = 33
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 14
    OnClick = tmpSaveClick
  end
  object jew_mass_text: TEdit
    Left = 568
    Top = 504
    Width = 417
    Height = 29
    Enabled = False
    TabOrder = 15
    OnKeyDown = jew_probe_textKeyDown
  end
  object Edit7: TEdit
    Left = 566
    Top = 424
    Width = 417
    Height = 29
    Enabled = False
    TabOrder = 16
    OnKeyDown = jew_probe_textKeyDown
  end
  object newProcentEdit: TEdit
    Left = 568
    Top = 584
    Width = 417
    Height = 29
    Enabled = False
    TabOrder = 17
    OnKeyDown = Edit1KeyDown
  end
  object DataSource1: TDataSource
    Left = 352
    Top = 112
  end
  object Query1: TQuery
    DatabaseName = 'INTRBASE1'
    SQL.Strings = (
      
        'SELECT a.Snum,a.Avtor,a.Nazvan,a.Dateizd,a.Datepr,a.Pricepr,a.Pr' +
        'ocent,'
      'b.Tel,b.Fam,b.Pasp,b.Adr'
      'FROM Books a,Sdat b'
      'Where a.Snum=b.Snum')
    Left = 392
    Top = 112
  end
  object Query2: TQuery
    DatabaseName = 'INTRBASE1'
    Left = 688
    Top = 312
  end
  object RvErrPrnProj: TRvProject
    ProjectFile = 'C:\BD_ANTIQ\ErrorPrnT1.rav'
    Left = 16
    Top = 384
  end
  object Query3: TQuery
    DatabaseName = 'INTRBASE1'
    Left = 728
    Top = 312
  end
  object RvErrPrnQueConn: TRvQueryConnection
    RuntimeVisibility = rtDeveloper
    Query = QueErrPrn
    Left = 56
    Top = 424
  end
  object QueErrPrn: TQuery
    DatabaseName = 'INTRBASE1'
    SQL.Strings = (
      
        'SELECT a.Snum,b.Fam,b.Adr,b.Pasp,a.Avtor,a.Nazvan,a.Dateizd,a.Pr' +
        'icepr,a.Pricepr-a.Procent*a.Pricepr*0.01,'
      'a.Datepr,b.Tel,a.Procent,a.comment'
      'FROM  Books  a, Sdat  b'
      'WHERE a.Snum=b.Snum AND a.Snum=2000009')
    Left = 56
    Top = 456
  end
  object RvErrPrnQueConn2: TRvQueryConnection
    RuntimeVisibility = rtDeveloper
    Query = Que2
    Left = 96
    Top = 424
  end
  object RvErrPrnQueConn3: TRvQueryConnection
    RuntimeVisibility = rtDeveloper
    Query = Que3
    Left = 128
    Top = 424
  end
  object RvErrPrnQueConn4: TRvQueryConnection
    RuntimeVisibility = rtDeveloper
    Query = Que4
    Left = 160
    Top = 424
  end
  object Que2: TQuery
    DatabaseName = 'INTRBASE1'
    SQL.Strings = (
      'SELECT Datepr,Nazvan,Pricepr,Kol,Kol*Pricepr,Comment FROM Books')
    Left = 96
    Top = 456
  end
  object Que3: TQuery
    DatabaseName = 'INTRBASE1'
    SQL.Strings = (
      
        'SELECT  Sum(Kol),Sum(Kol*Pricepr ) ag,Sum(Kol*Pricepr )-(Sum(Kol' +
        '*Pricepr )*Procent*0.01) '
      'FROM Books'
      'group by Procent')
    Left = 128
    Top = 456
  end
  object Que4: TQuery
    DatabaseName = 'INTRBASE1'
    SQL.Strings = (
      'SELECT a.oid,a.Fam,a.Adr,a.pasp FROM Sdat a')
    Left = 160
    Top = 456
  end
  object QueErrText: TQuery
    DatabaseName = #1050#1085#1080#1075#1080
    SQL.Strings = (
      'SELECT * FROM PriceStr')
    Left = 200
    Top = 456
  end
  object RvQueErrTextCon: TRvQueryConnection
    RuntimeVisibility = rtDeveloper
    Query = QueErrText
    Left = 200
    Top = 424
  end
  object RvErrPrnJew: TRvQueryConnection
    RuntimeVisibility = rtDeveloper
    Query = QueErrPrnJew
    Left = 16
    Top = 424
  end
  object QueErrPrnJew: TQuery
    DatabaseName = 'INTRBASE1'
    SQL.Strings = (
      
        'SELECT a.Snum,b.Fam,b.Adr,b.Pasp,a.Avtor,a.Nazvan,a.Dateizd,a.Pr' +
        'icepr,a.Pricepr-a.Procent*a.Pricepr*0.01,'
      'a.Datepr,b.Tel,a.Procent,a.comment,a.jew_mass,a.jew_probe'
      'FROM  Books  a, Sdat  b'
      'WHERE a.Snum=b.Snum AND a.Snum=5000008')
    Left = 16
    Top = 456
  end
end
