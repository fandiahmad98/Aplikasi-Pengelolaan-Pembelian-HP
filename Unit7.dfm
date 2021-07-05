object FormStatistik: TFormStatistik
  Left = -6
  Top = 234
  Width = 654
  Height = 257
  Caption = 'FormStatistik'
  Color = clActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 8
    Top = 16
    Width = 129
    Height = 13
    Caption = 'Statistik data penjualan HP'
  end
  object lbl2: TLabel
    Left = 8
    Top = 144
    Width = 112
    Height = 13
    Caption = 'Nilai Rata - rata (Mean)'
  end
  object lbl5: TLabel
    Left = 400
    Top = 152
    Width = 8
    Height = 13
    Caption = '='
  end
  object lbl6: TLabel
    Left = 8
    Top = 48
    Width = 113
    Height = 13
    Caption = 'Pembelian nilai terbesar'
  end
  object lbl7: TLabel
    Left = 8
    Top = 96
    Width = 106
    Height = 13
    Caption = 'Pembelian nilai terkecil'
  end
  object lbl8: TLabel
    Left = 240
    Top = 152
    Width = 6
    Height = 13
    Caption = 'X'
  end
  object lbl9: TLabel
    Left = 240
    Top = 104
    Width = 6
    Height = 13
    Caption = 'X'
  end
  object lbl10: TLabel
    Left = 240
    Top = 56
    Width = 6
    Height = 13
    Caption = 'X'
  end
  object lbl3: TLabel
    Left = 400
    Top = 112
    Width = 8
    Height = 13
    Caption = '='
  end
  object lbl11: TLabel
    Left = 400
    Top = 64
    Width = 8
    Height = 13
    Caption = '='
  end
  object edt_pengali: TEdit
    Left = 264
    Top = 144
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edt_hasilpengali: TEdit
    Left = 424
    Top = 144
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btn_hitungstat: TButton
    Left = 600
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Hitung'
    TabOrder = 2
    OnClick = btn_hitungstatClick
  end
  object smdbgrd_max: TSMDBGrid
    Left = 144
    Top = 48
    Width = 73
    Height = 25
    DataSource = DataModule2.ds6max_016
    Options = [dgEditing, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Flat = False
    BandsFont.Charset = DEFAULT_CHARSET
    BandsFont.Color = clWindowText
    BandsFont.Height = -11
    BandsFont.Name = 'Tahoma'
    BandsFont.Style = []
    Groupings = <>
    GridStyle.Style = gsCustom
    GridStyle.OddColor = clWindow
    GridStyle.EvenColor = clWindow
    TitleHeight.PixelCount = 24
    FooterColor = clBtnFace
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoFilterAutoApply]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'max(total_harga)'
        Title.Alignment = taCenter
        Title.Caption = 'Nilai'
        Visible = True
      end>
  end
  object smdbgrd_min: TSMDBGrid
    Left = 144
    Top = 96
    Width = 73
    Height = 25
    DataSource = DataModule2.ds6min_016
    Options = [dgEditing, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Flat = False
    BandsFont.Charset = DEFAULT_CHARSET
    BandsFont.Color = clWindowText
    BandsFont.Height = -11
    BandsFont.Name = 'Tahoma'
    BandsFont.Style = []
    Groupings = <>
    GridStyle.Style = gsCustom
    GridStyle.OddColor = clWindow
    GridStyle.EvenColor = clWindow
    TitleHeight.PixelCount = 24
    FooterColor = clBtnFace
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoFilterAutoApply]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'min(total_harga)'
        Title.Alignment = taCenter
        Title.Caption = 'Nilai'
        Visible = True
      end>
  end
  object smdbgrd_avg: TSMDBGrid
    Left = 144
    Top = 144
    Width = 73
    Height = 25
    DataSource = DataModule2.ds6avg_016
    Options = [dgEditing, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Flat = False
    BandsFont.Charset = DEFAULT_CHARSET
    BandsFont.Color = clWindowText
    BandsFont.Height = -11
    BandsFont.Name = 'Tahoma'
    BandsFont.Style = []
    Groupings = <>
    GridStyle.Style = gsCustom
    GridStyle.OddColor = clWindow
    GridStyle.EvenColor = clWindow
    TitleHeight.PixelCount = 24
    FooterColor = clBtnFace
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoFilterAutoApply]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'avg(total_harga)'
        Title.Alignment = taCenter
        Title.Caption = 'Nilai'
        Visible = True
      end>
  end
  object edt_pengalimin: TEdit
    Left = 264
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object edt_hasilmin: TEdit
    Left = 424
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object edt_pengalimax: TEdit
    Left = 264
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 8
  end
  object edt_totalmax: TEdit
    Left = 424
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 9
  end
end
