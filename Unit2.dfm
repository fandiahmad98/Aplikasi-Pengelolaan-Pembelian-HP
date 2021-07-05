object DataModule2: TDataModule2
  OldCreateOrder = False
  Left = 1270
  Top = 242
  Height = 430
  Width = 690
  object con1_016: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'hp_online'
    User = 'root'
    Protocol = 'mysql'
    Left = 8
    Top = 8
  end
  object zqry1_016: TZQuery
    Connection = con1_016
    Active = True
    SQL.Strings = (
      'select * from pembeli')
    Params = <>
    Left = 72
    Top = 8
    object strngfldzqry1_016NIK: TStringField
      FieldName = 'NIK'
      Required = True
      Size = 13
    end
    object strngfldzqry1_016Nama: TStringField
      FieldName = 'Nama'
      Required = True
      Size = 15
    end
    object strngfldzqry1_016Alamat: TStringField
      FieldName = 'Alamat'
      Required = True
      Size = 15
    end
    object strngfldzqry1_016Merk_HP: TStringField
      DisplayLabel = 'Merk HP'
      FieldName = 'Merk_HP'
      Required = True
      Size = 10
    end
    object strngfldzqry1_016Tipe_HP: TStringField
      DisplayLabel = 'Tipe HP'
      FieldName = 'Tipe_HP'
      Required = True
    end
    object strngfldzqry1_016Warna_HP: TStringField
      DisplayLabel = 'Warna HP'
      FieldName = 'Warna_HP'
      Required = True
      Size = 10
    end
    object strngfldzqry1_016Banyak_HP: TStringField
      DisplayLabel = 'Banyak HP'
      FieldName = 'Banyak_HP'
      Required = True
      Size = 2
    end
    object strngfldzqry1_016Metode_bayar: TStringField
      FieldName = 'Metode_bayar'
      Required = True
      Size = 15
    end
    object strngfldzqry1_016no_rekening: TStringField
      FieldName = 'no_rekening'
      Required = True
      Size = 15
    end
    object intgrfldzqry1_016total_harga: TIntegerField
      FieldName = 'total_harga'
      Required = True
    end
  end
  object ds1_016: TDataSource
    DataSet = zqry1_016
    Left = 136
    Top = 8
  end
  object zqry2_016: TZQuery
    Connection = con1_016
    Active = True
    SQL.Strings = (
      'select * from admin')
    Params = <>
    Left = 72
    Top = 64
  end
  object ds2_016: TDataSource
    DataSet = zqry2_016
    Left = 136
    Top = 64
  end
  object zqry3_016: TZQuery
    Connection = con1_016
    Active = True
    SQL.Strings = (
      'select * from stock_hp')
    Params = <>
    Left = 72
    Top = 120
  end
  object ds3_016: TDataSource
    DataSet = zqry3_016
    Left = 136
    Top = 120
  end
  object zqry4_016: TZQuery
    Connection = con1_016
    Active = True
    SQL.Strings = (
      'select * from status_pembelian')
    Params = <>
    Left = 72
    Top = 176
  end
  object ds4_016: TDataSource
    DataSet = zqry4_016
    Left = 136
    Top = 176
  end
  object zqry5_016: TZQuery
    Connection = con1_016
    Active = True
    SQL.Strings = (
      'select * from status_pembelian')
    Params = <>
    Left = 72
    Top = 232
  end
  object ds5_016: TDataSource
    DataSet = zqry5_016
    Left = 136
    Top = 232
  end
  object smdbfndlg1_016: TSMDBFindDialog
    Caption = 'Record search'
    ShowDialog = True
    DataSource = ds1_016
    FindOption = []
    FindMode = fmAnyPart
    FindScore = fsFromFirst
    SayResult = False
    Left = 200
    Top = 8
  end
  object smdbfndlg3_016: TSMDBFindDialog
    Caption = 'Record search'
    ShowDialog = True
    DataSource = ds3_016
    FindOption = []
    FindMode = fmAnyPart
    FindScore = fsFromFirst
    SayResult = False
    Left = 208
    Top = 120
  end
  object smdbfndlg4_016: TSMDBFindDialog
    Caption = 'Record search'
    ShowDialog = True
    DataSource = ds4_016
    FindOption = []
    FindMode = fmAnyPart
    FindScore = fsFromFirst
    SayResult = False
    Left = 208
    Top = 176
  end
  object frxrprt1_016: TfrxReport
    Version = '4.6.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43905.413898541700000000
    ReportOptions.LastChange = 44381.312606423610000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 280
    Top = 8
    Datasets = <
      item
        DataSet = frxdbdtst1_016
        DataSetName = 'frxdbdtst1_016'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      object Header1: TfrxHeader
        Height = 75.590600000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Memo1: TfrxMemoView
          Left = 321.260050000000000000
          Top = 15.118120000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Data Pelanggan')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Top = 56.692950000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'NIK')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 37.795300000000000000
          Top = 56.692950000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Nama')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 102.047310000000000000
          Top = 56.692950000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Alamat')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 177.637910000000000000
          Top = 56.692950000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Merk HP')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 257.008040000000000000
          Top = 56.692950000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Tipe HP')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 321.260050000000000000
          Top = 56.692950000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Warna HP')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 385.512060000000000000
          Top = 56.692950000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Banyak HP')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 457.323130000000000000
          Top = 56.692950000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Metode Bayar')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 544.252320000000000000
          Top = 56.692950000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'No. Rekening')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 631.181510000000000000
          Top = 56.692950000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Total Harga')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 117.165430000000000000
        Width = 793.701300000000000000
        DataSet = frxdbdtst1_016
        DataSetName = 'frxdbdtst1_016'
        RowCount = 0
        object frxdbdtst1_016NIK: TfrxMemoView
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NIK'
          DataSet = frxdbdtst1_016
          DataSetName = 'frxdbdtst1_016'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdtst1_016."NIK"]')
          ParentFont = False
        end
        object frxdbdtst1_016Nama: TfrxMemoView
          Left = 37.795300000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Nama'
          DataSet = frxdbdtst1_016
          DataSetName = 'frxdbdtst1_016'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdtst1_016."Nama"]')
          ParentFont = False
        end
        object frxdbdtst1_016Alamat: TfrxMemoView
          Left = 102.047310000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Alamat'
          DataSet = frxdbdtst1_016
          DataSetName = 'frxdbdtst1_016'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdtst1_016."Alamat"]')
          ParentFont = False
        end
        object frxdbdtst1_016Alamat1: TfrxMemoView
          Left = 177.637910000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Merk_HP'
          DataSet = frxdbdtst1_016
          DataSetName = 'frxdbdtst1_016'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdtst1_016."Merk_HP"]')
          ParentFont = False
        end
        object frxdbdtst1_016Tipe_HP: TfrxMemoView
          Left = 257.008040000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Tipe_HP'
          DataSet = frxdbdtst1_016
          DataSetName = 'frxdbdtst1_016'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1_016."Tipe_HP"]')
          ParentFont = False
        end
        object frxdbdtst1_016Warna_HP: TfrxMemoView
          Left = 321.260050000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Warna_HP'
          DataSet = frxdbdtst1_016
          DataSetName = 'frxdbdtst1_016'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1_016."Warna_HP"]')
          ParentFont = False
        end
        object frxdbdtst1_016Banyak_HP: TfrxMemoView
          Left = 385.512060000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Banyak_HP'
          DataSet = frxdbdtst1_016
          DataSetName = 'frxdbdtst1_016'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1_016."Banyak_HP"]')
          ParentFont = False
        end
        object frxdbdtst1_016Metode_bayar: TfrxMemoView
          Left = 457.323130000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Metode_bayar'
          DataSet = frxdbdtst1_016
          DataSetName = 'frxdbdtst1_016'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1_016."Metode_bayar"]')
          ParentFont = False
        end
        object frxdbdtst1_016no_rekening: TfrxMemoView
          Left = 544.252320000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'no_rekening'
          DataSet = frxdbdtst1_016
          DataSetName = 'frxdbdtst1_016'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1_016."no_rekening"]')
          ParentFont = False
        end
        object frxdbdtst1_016total_harga: TfrxMemoView
          Left = 631.181510000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'total_harga'
          DataSet = frxdbdtst1_016
          DataSetName = 'frxdbdtst1_016'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1_016."total_harga"]')
          ParentFont = False
        end
      end
    end
  end
  object frxrprt3_016: TfrxReport
    Version = '4.6.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43905.414189884300000000
    ReportOptions.LastChange = 43917.443196296300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 280
    Top = 120
    Datasets = <
      item
        DataSet = frxdbdtst2_016
        DataSetName = 'frxdbdtst2_016'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      object Header1: TfrxHeader
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Memo1: TfrxMemoView
          Left = 366.614410000000000000
          Top = 3.779530000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Stock HP')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 245.669450000000000000
          Top = 37.795300000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Merk')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 325.039580000000000000
          Top = 37.795300000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Tipe HP')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 483.779840000000000000
          Top = 37.795300000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Stock')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 98.267780000000000000
        Width = 793.701300000000000000
        DataSet = frxdbdtst2_016
        DataSetName = 'frxdbdtst2_016'
        RowCount = 0
        object frxdbdtst2_016Merk_HP: TfrxMemoView
          Left = 245.669450000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Merk_HP'
          DataSet = frxdbdtst2_016
          DataSetName = 'frxdbdtst2_016'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst2_016."Merk_HP"]')
          ParentFont = False
        end
        object frxdbdtst2_016Tipe_HP: TfrxMemoView
          Left = 325.039580000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Tipe_HP'
          DataSet = frxdbdtst2_016
          DataSetName = 'frxdbdtst2_016'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst2_016."Tipe_HP"]')
          ParentFont = False
        end
        object frxdbdtst2_016Stock_Tersedia: TfrxMemoView
          Left = 483.779840000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Stock_Tersedia'
          DataSet = frxdbdtst2_016
          DataSetName = 'frxdbdtst2_016'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst2_016."Stock_Tersedia"]')
          ParentFont = False
        end
      end
    end
  end
  object frxrprt4_016: TfrxReport
    Version = '4.6.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43905.414435717600000000
    ReportOptions.LastChange = 43917.450962118060000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 280
    Top = 176
    Datasets = <
      item
        DataSet = frxdbdtst3_016
        DataSetName = 'frxdbdtst3_016'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      object Header1: TfrxHeader
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Memo1: TfrxMemoView
          Left = 332.598640000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Status Pembelian')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 75.590600000000000000
          Top = 37.795300000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'NIK')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 151.181200000000000000
          Top = 37.795300000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Nama')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 257.008040000000000000
          Top = 37.795300000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'HP yang dibeli')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 464.882190000000000000
          Top = 37.795300000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Status')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 544.252320000000000000
          Top = 37.795300000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Keterangan')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 98.267780000000000000
        Width = 793.701300000000000000
        DataSet = frxdbdtst3_016
        DataSetName = 'frxdbdtst3_016'
        RowCount = 0
        object frxdbdtst3_016NIK_pembeli: TfrxMemoView
          Left = 75.590600000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NIK_pembeli'
          DataSet = frxdbdtst3_016
          DataSetName = 'frxdbdtst3_016'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst3_016."NIK_pembeli"]')
          ParentFont = False
        end
        object frxdbdtst3_016nama_pembeli: TfrxMemoView
          Left = 151.181200000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nama_pembeli'
          DataSet = frxdbdtst3_016
          DataSetName = 'frxdbdtst3_016'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst3_016."nama_pembeli"]')
          ParentFont = False
        end
        object frxdbdtst3_016HP_yang_dibeli: TfrxMemoView
          Left = 257.008040000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'HP_yang_dibeli'
          DataSet = frxdbdtst3_016
          DataSetName = 'frxdbdtst3_016'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst3_016."HP_yang_dibeli"]')
          ParentFont = False
        end
        object frxdbdtst3_016Status: TfrxMemoView
          Left = 464.882190000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Status'
          DataSet = frxdbdtst3_016
          DataSetName = 'frxdbdtst3_016'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst3_016."Status"]')
          ParentFont = False
        end
        object frxdbdtst3_016Keterangan: TfrxMemoView
          Left = 544.252320000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Keterangan'
          DataSet = frxdbdtst3_016
          DataSetName = 'frxdbdtst3_016'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst3_016."Keterangan"]')
          ParentFont = False
        end
      end
    end
  end
  object frxdbdtst1_016: TfrxDBDataset
    UserName = 'frxdbdtst1_016'
    CloseDataSource = False
    DataSet = zqry1_016
    Left = 352
    Top = 8
  end
  object frxdbdtst2_016: TfrxDBDataset
    UserName = 'frxdbdtst2_016'
    CloseDataSource = False
    DataSet = zqry3_016
    Left = 352
    Top = 120
  end
  object frxdbdtst3_016: TfrxDBDataset
    UserName = 'frxdbdtst3_016'
    CloseDataSource = False
    DataSet = zqry4_016
    Left = 352
    Top = 176
  end
  object smdbfltrdlg1_016: TSMDBFilterDialog
    Caption = 'Filter setup dialog'
    Dataset = zqry1_016
    FilterMode = fmFilterDataset
    WildCard = '%'
    Left = 440
    Top = 8
  end
  object smdbfltrdlg2_016: TSMDBFilterDialog
    Caption = 'Filter setup dialog'
    Dataset = zqry3_016
    FilterMode = fmFilterDataset
    WildCard = '%'
    Left = 440
    Top = 120
  end
  object smdbfltrdlg3_016: TSMDBFilterDialog
    Caption = 'Filter setup dialog'
    Dataset = zqry4_016
    FilterMode = fmFilterDataset
    WildCard = '%'
    Left = 440
    Top = 176
  end
  object zqry6max_016: TZQuery
    Connection = con1_016
    Active = True
    SQL.Strings = (
      'select max(total_harga) from pembeli')
    Params = <>
    Left = 72
    Top = 288
  end
  object zqry6min_016: TZQuery
    Connection = con1_016
    Active = True
    SQL.Strings = (
      'select min(total_harga) from pembeli')
    Params = <>
    Left = 72
    Top = 344
  end
  object zqry6avg_016: TZQuery
    Connection = con1_016
    Active = True
    SQL.Strings = (
      'select avg(total_harga) from pembeli')
    Params = <>
    Left = 72
    Top = 400
  end
  object ds6max_016: TDataSource
    DataSet = zqry6max_016
    Left = 136
    Top = 288
  end
  object ds6min_016: TDataSource
    DataSet = zqry6min_016
    Left = 136
    Top = 344
  end
  object ds6avg_016: TDataSource
    DataSet = zqry6avg_016
    Left = 136
    Top = 400
  end
end
