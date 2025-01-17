object Form16: TForm16
  Left = 16
  Top = 94
  Width = 870
  Height = 640
  Caption = 'Form16'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RvDataSetConnection1: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    Left = 104
    Top = 56
  end
  object Database1: TDatabase
    AliasName = #1050#1085#1080#1075#1080
    DatabaseName = #1092#1092#1092
    SessionName = 'Default'
    Left = 160
    Top = 56
  end
  object Query1: TQuery
    Left = 304
    Top = 56
  end
  object Books: TTable
    DatabaseName = #1092#1092#1092
    FieldDefs = <
      item
        Name = 'Bnum'
        Attributes = [faReadonly]
        DataType = ftAutoInc
      end
      item
        Name = 'Snum'
        DataType = ftInteger
      end
      item
        Name = 'Notd'
        DataType = ftInteger
      end
      item
        Name = 'Avtor'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'Nazvan'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'Dateizd'
        DataType = ftInteger
      end
      item
        Name = 'Datepr'
        DataType = ftDate
      end
      item
        Name = 'Comment'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'Pricepr'
        DataType = ftCurrency
      end
      item
        Name = 'Procent'
        DataType = ftInteger
      end
      item
        Name = 'Prod'
        DataType = ftBoolean
      end
      item
        Name = 'Dateprod'
        DataType = ftDate
      end
      item
        Name = 'Vozvr'
        DataType = ftBoolean
      end
      item
        Name = 'Otpr'
        DataType = ftBoolean
      end
      item
        Name = 'Now'
        DataType = ftInteger
      end
      item
        Name = 'God'
        DataType = ftBoolean
      end
      item
        Name = 'Kol'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'BooksIndex1'
        Fields = 'Bnum'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'Books.DB'
    Left = 208
    Top = 56
  end
  object DataSource1: TDataSource
    DataSet = Books
    Left = 208
    Top = 120
  end
  object Table2: TTable
    DatabaseName = #1092#1092#1092
    TableName = 'Sdat.DB'
    Left = 256
    Top = 56
  end
end
