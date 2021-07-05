object Form1: TForm1
  Left = 454
  Top = 188
  Width = 501
  Height = 434
  Caption = 'Form1'
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
    Left = 117
    Top = 16
    Width = 259
    Height = 50
    Alignment = taCenter
    Caption = 'Selamat Datang di'#13#10'Aplikasi Pembelian HP Online'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = -21
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 280
    Top = 104
    Width = 163
    Height = 13
    Caption = 'Klik tombol dibawah untuk pembeli'
  end
  object lbl3: TLabel
    Left = 56
    Top = 104
    Width = 155
    Height = 13
    Caption = 'Klik tombol dibawah untuk admin'
  end
  object lbl4: TLabel
    Left = 144
    Top = 208
    Width = 208
    Height = 13
    Caption = 'Klik tombol dibawah untuk cek barang anda'
  end
  object btn1_pembeli: TButton
    Left = 328
    Top = 136
    Width = 83
    Height = 25
    Caption = 'Untuk Pembeli'
    TabOrder = 0
    OnClick = btn1_pembeliClick
  end
  object btn1_admin: TButton
    Left = 96
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Untuk Admin'
    TabOrder = 1
    OnClick = btn1_adminClick
  end
  object btn1_cekbarang: TButton
    Left = 200
    Top = 240
    Width = 97
    Height = 25
    Caption = 'Untuk cek barang'
    TabOrder = 2
    OnClick = btn1_cekbarangClick
  end
  object btn1_keluar: TButton
    Left = 24
    Top = 360
    Width = 75
    Height = 25
    Caption = 'Keluar'
    TabOrder = 3
    OnClick = btn1_keluarClick
  end
end
