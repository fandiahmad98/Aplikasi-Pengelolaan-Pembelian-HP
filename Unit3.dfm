object FormPembelian: TFormPembelian
  Left = 767
  Top = 338
  Width = 621
  Height = 488
  Caption = 'FormPembelian'
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
    Top = 8
    Width = 93
    Height = 13
    Caption = 'Form Pembelian HP'
  end
  object lbl2: TLabel
    Left = 24
    Top = 64
    Width = 28
    Height = 13
    Caption = 'Nama'
  end
  object lbl3: TLabel
    Left = 24
    Top = 96
    Width = 32
    Height = 13
    Caption = 'Alamat'
  end
  object lbl4: TLabel
    Left = 24
    Top = 128
    Width = 63
    Height = 13
    Caption = 'Pilih merk HP'
  end
  object lbl5: TLabel
    Left = 24
    Top = 160
    Width = 57
    Height = 13
    Caption = 'Pilih tipe HP'
  end
  object lbl6: TLabel
    Left = 24
    Top = 192
    Width = 69
    Height = 13
    Caption = 'Pilih warna HP'
  end
  object lbl7: TLabel
    Left = 24
    Top = 224
    Width = 75
    Height = 13
    Caption = 'Pilih banyak HP'
  end
  object lbl8: TLabel
    Left = 24
    Top = 256
    Width = 118
    Height = 13
    Caption = 'Pilih metode pembayaran'
  end
  object lbl9: TLabel
    Left = 24
    Top = 288
    Width = 119
    Height = 13
    Caption = 'Masukkan No. Rekening'
  end
  object lbl10: TLabel
    Left = 24
    Top = 32
    Width = 18
    Height = 13
    Caption = 'NIK'
  end
  object lbl11: TLabel
    Left = 24
    Top = 320
    Width = 79
    Height = 13
    Caption = 'Total Harga (Rp)'
  end
  object btn2_okpembelian: TButton
    Left = 352
    Top = 368
    Width = 75
    Height = 25
    Caption = 'Konfirmasi'
    TabOrder = 0
    OnClick = btn2_okpembelianClick
  end
  object edt_nama: TEdit
    Left = 232
    Top = 64
    Width = 145
    Height = 21
    TabOrder = 1
  end
  object edt_alamat: TEdit
    Left = 232
    Top = 96
    Width = 145
    Height = 21
    TabOrder = 2
  end
  object cbb_merkhp: TComboBox
    Left = 232
    Top = 128
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 3
    OnChange = cbb_merkhpChange
    Items.Strings = (
      'Samsung'
      'iPhone'
      'Sony')
  end
  object cbb_tipehp: TComboBox
    Left = 232
    Top = 160
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 4
  end
  object cbb_warnahp: TComboBox
    Left = 232
    Top = 192
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    Items.Strings = (
      'Hitam'
      'Putih')
  end
  object cbb_metode: TComboBox
    Left = 232
    Top = 256
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 6
    Items.Strings = (
      'Bank Mandiri'
      'Bank BNI'
      'Bank BCA'
      'Bank BRI'
      'Bank Danamon')
  end
  object edt_norek: TEdit
    Left = 232
    Top = 288
    Width = 145
    Height = 21
    TabOrder = 7
  end
  object btn3_kembali: TButton
    Left = 144
    Top = 368
    Width = 75
    Height = 25
    Caption = 'Kembali'
    TabOrder = 8
    OnClick = btn3_kembaliClick
  end
  object edt_nik: TEdit
    Left = 232
    Top = 32
    Width = 145
    Height = 21
    TabOrder = 9
  end
  object btn_reset: TButton
    Left = 248
    Top = 368
    Width = 75
    Height = 25
    Caption = 'Reset'
    TabOrder = 10
    OnClick = btn_resetClick
  end
  object edt_totalharga: TEdit
    Left = 232
    Top = 320
    Width = 145
    Height = 21
    TabOrder = 11
  end
  object edt_banyakhp: TEdit
    Left = 232
    Top = 224
    Width = 145
    Height = 21
    TabOrder = 12
  end
  object btn_cekharga: TButton
    Left = 400
    Top = 320
    Width = 75
    Height = 25
    Caption = 'Cek Harga'
    TabOrder = 13
    OnClick = btn_cekhargaClick
  end
end
