object FormAdmin: TFormAdmin
  Left = 913
  Top = 199
  Width = 416
  Height = 361
  Caption = 'FormAdmin'
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
    Left = 56
    Top = 24
    Width = 133
    Height = 13
    Caption = 'Silahkan login untuk penjual'
  end
  object lbl2: TLabel
    Left = 24
    Top = 72
    Width = 48
    Height = 13
    Caption = 'Username'
  end
  object lbl3: TLabel
    Left = 24
    Top = 104
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object edt_username: TEdit
    Left = 104
    Top = 72
    Width = 137
    Height = 21
    TabOrder = 0
  end
  object edt_password: TEdit
    Left = 104
    Top = 104
    Width = 137
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
  end
  object btn_login: TButton
    Left = 200
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Login'
    TabOrder = 2
    OnClick = btn_loginClick
  end
  object btn2_kembali: TButton
    Left = 96
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Kembali'
    TabOrder = 3
    OnClick = btn2_kembaliClick
  end
end
