unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, SMDBGrid;

type
  TFormCek = class(TForm)
    VarUni_sdbGrid1_cekstok: TSMDBGrid;
    lbl1: TLabel;
    edt1_ceknik: TEdit;
    btn1_cek: TButton;
    btn1_kembali: TButton;
    procedure btn1_cekClick(Sender: TObject);
    procedure btn1_kembaliClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCek: TFormCek;

implementation

uses Unit2,Unit1;

{$R *.dfm}

procedure TFormCek.btn1_cekClick(Sender: TObject);
var
  a : string;
begin
a := edt1_ceknik.Text;
DataModule2.zqry5_016.SQL.Clear;
DataModule2.zqry5_016.Active:=False;
DataModule2.zqry5_016.SQL.Text:= 'select * from status_pembelian where nik_pembeli = '+a;
DataModule2.zqry5_016.Active:=True;
FormCek.VarUni_sdbGrid1_cekstok.Show;
end;

procedure TFormCek.btn1_kembaliClick(Sender: TObject);
begin
FormCek.Hide;
Form1.Show;
end;

end.
