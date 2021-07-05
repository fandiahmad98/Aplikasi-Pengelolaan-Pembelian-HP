unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormAdmin = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    edt_username: TEdit;
    edt_password: TEdit;
    btn_login: TButton;
    btn2_kembali: TButton;
    procedure btn_loginClick(Sender: TObject);
    procedure btn2_kembaliClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAdmin: TFormAdmin;

implementation

uses Unit5,Unit1,Unit2,ZConnection;

{$R *.dfm}

procedure TFormAdmin.btn_loginClick(Sender: TObject);
begin
  with DataModule2.zqry2_016 do begin
SQL.Clear;
SQL.Add('select * from admin where username='+QuotedStr(edt_username.Text));
open;
end;
//end with
//jika tidak ditemukan data yang dicari
//maka tampilkan pesan
if DataModule2.zqry2_016.RecordCount=0
then
Application.MessageBox('Maaf user name tidak ditemukan','informasi',MB_OK or MB_ICONINFORMATION)
else
begin
if DataModule2.zqry2_016.FieldByName('password').AsString<>edt_password.Text
then
Application.MessageBox('mastikan password yang anda masukkan benar','error',MB_OK or MB_ICONERROR)
else
begin
hide;
FormTabelAdmin.Show;
end;
end;
end;

procedure TFormAdmin.btn2_kembaliClick(Sender: TObject);
begin

FormAdmin.Hide;
Form1.Show;
end;

end.
