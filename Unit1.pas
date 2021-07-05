unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,StdCtrls, jpeg, ExtCtrls;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    btn1_pembeli: TButton;
    btn1_admin: TButton;
    lbl4: TLabel;
    btn1_cekbarang: TButton;
    btn1_keluar: TButton;
    procedure btn1_pembeliClick(Sender: TObject);
    procedure btn1_adminClick(Sender: TObject);
    procedure btn1_keluarClick(Sender: TObject);
    procedure btn1_cekbarangClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2,Unit3,Unit4,Unit6;

{$R *.dfm}

procedure TForm1.btn1_pembeliClick(Sender: TObject);
begin
form1.Hide;
FormPembelian.Show;
end;

procedure TForm1.btn1_adminClick(Sender: TObject);
begin
form1.Hide;
FormAdmin.Show;
end;

procedure TForm1.btn1_keluarClick(Sender: TObject);
begin
if (Application.MessageBox('Apakah anda ingin keluar dari aplikasi?','Peringatan',mb_yesno)=id_yes)
then
Close;
end;

procedure TForm1.btn1_cekbarangClick(Sender: TObject);
begin
Form1.Hide;
FormCek.Show;
FormCek.VarUni_sdbGrid1_cekstok.Hide;
end;

end.
