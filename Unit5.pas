unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, SMDBCtrl, Grids, DBGrids, SMDBGrid, StdCtrls, mxExport;

type
  TFormTabelAdmin = class(TForm)
    VarUni_sdbGrid_tabel: TSMDBGrid;
    VarUni_sDbNav_status: TSMDBNavigator;
    btn3_keluar: TButton;
    btn3_logout: TButton;
    VarUni_sdbGrid1_admin: TSMDBGrid;
    VarUni_sdbGrid3_stock: TSMDBGrid;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    VarUni_sdbGrid4_status: TSMDBGrid;
    lbl4: TLabel;
    VarUni_sDbNav_stok: TSMDBNavigator;
    VarUni_sDbNav_pembeli: TSMDBNavigator;
    mxDBGridExport1_016: TmxDBGridExport;
    mxDBGridExport13_1: TmxDBGridExport;
    mxDBGridExport14_1: TmxDBGridExport;
    btn_statistik: TButton;
    btn_sort: TButton;
    btn_descending: TButton;
    procedure btn3_keluarClick(Sender: TObject);
    procedure btn3_logoutClick(Sender: TObject);
    procedure VarUni_sDbNav_pembeliClick(Sender: TObject;
      Button: TSMNavigateBtn);
    procedure VarUni_sDbNav_stokClick(Sender: TObject;
      Button: TSMNavigateBtn);
    procedure VarUni_sDbNav_statusClick(Sender: TObject;
      Button: TSMNavigateBtn);
    procedure FormCreate(Sender: TObject);
    procedure btn_statistikClick(Sender: TObject);
    procedure btn_sortClick(Sender: TObject);
    procedure btn_descendingClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTabelAdmin: TFormTabelAdmin;

implementation

uses Unit4,Unit2,Unit7;

{$R *.dfm}

procedure TFormTabelAdmin.btn3_keluarClick(Sender: TObject);
begin
if (Application.MessageBox('Apakah anda ingin keluar dari aplikasi?','Peringatan',mb_yesno)=id_yes)
then
Close;
end;

procedure TFormTabelAdmin.btn3_logoutClick(Sender: TObject);
begin
FormTabelAdmin.Hide;
FormAdmin.Show;
FormAdmin.edt_username.Text:='';
FormAdmin.edt_password.Text:='';
end;

procedure TFormTabelAdmin.VarUni_sDbNav_pembeliClick(Sender: TObject;
  Button: TSMNavigateBtn);
begin
case Button of
sbFind : DataModule2.smdbfndlg1_016.Execute;
sbExport : mxDBGridExport1_016.Execute;
sbPrint : DataModule2.frxrprt1_016.ShowReport;
sbFilter : DataModule2.smdbfltrdlg1_016.Execute;
end;

end;

procedure TFormTabelAdmin.VarUni_sDbNav_stokClick(Sender: TObject;
  Button: TSMNavigateBtn);
begin
case Button of
sbFind : DataModule2.smdbfndlg3_016.Execute;
sbExport : mxDBGridExport13_1.Execute;
sbPrint : DataModule2.frxrprt3_016.ShowReport;
sbFilter : DataModule2.smdbfltrdlg2_016.Execute;
end;

end;

procedure TFormTabelAdmin.VarUni_sDbNav_statusClick(Sender: TObject;
  Button: TSMNavigateBtn);
begin
case Button of
sbFind : DataModule2.smdbfndlg4_016.Execute;
sbExport : mxDBGridExport14_1.Execute;
sbPrint : DataModule2.frxrprt4_016.ShowReport;
sbFilter : DataModule2.smdbfltrdlg3_016.Execute;
end;

end;

procedure TFormTabelAdmin.FormCreate(Sender: TObject);
begin
DateSeparator := '-';
ShortDateFormat := 'dd/MM/yyyy';
ThousandSeparator := '.';
DecimalSeparator := ',';
end;

procedure TFormTabelAdmin.btn_statistikClick(Sender: TObject);
begin
FormTabelAdmin.Hide;
FormStatistik.Show;
end;

procedure TFormTabelAdmin.btn_sortClick(Sender: TObject);
begin
with DataModule2.zqry1_016 do begin
SQL.Clear;
SQL.Add('select * from pembeli order by total_harga asc');
open;
end;
end;

procedure TFormTabelAdmin.btn_descendingClick(Sender: TObject);
begin
with DataModule2.zqry1_016 do begin
SQL.Clear;
SQL.Add('select * from pembeli order by total_harga desc');
open;
end;
end;

end.

