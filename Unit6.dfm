object FormCek: TFormCek
  Left = 685
  Top = 295
  Width = 484
  Height = 318
  Caption = 'FormCek'
  Color = clActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 16
    Top = 24
    Width = 104
    Height = 13
    Caption = 'Masukkan NIK anda :'
  end
  object VarUni_sdbGrid1_cekstok: TSMDBGrid
    Left = 16
    Top = 88
    Width = 433
    Height = 153
    DataSource = DataModule2.ds5_016
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Flat = False
    BandsFont.Charset = DEFAULT_CHARSET
    BandsFont.Color = clWindowText
    BandsFont.Height = -11
    BandsFont.Name = 'MS Sans Serif'
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
    DefaultRowHeight = 24
    ScrollBars = ssHorizontal
  end
  object edt1_ceknik: TEdit
    Left = 144
    Top = 24
    Width = 153
    Height = 21
    TabOrder = 1
  end
  object btn1_cek: TButton
    Left = 328
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Cek'
    TabOrder = 2
    OnClick = btn1_cekClick
  end
  object btn1_kembali: TButton
    Left = 16
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Kembali'
    TabOrder = 3
    OnClick = btn1_kembaliClick
  end
end
