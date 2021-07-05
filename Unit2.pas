unit Unit2;

interface

uses
  SysUtils, Classes, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, SMDBFind, mxExport, SMDBFltr, frxClass,
  frxDBSet, ZAbstractTable;

type
  TDataModule2 = class(TDataModule)
    con1_016: TZConnection;
    zqry1_016: TZQuery;
    ds1_016: TDataSource;
    zqry2_016: TZQuery;
    ds2_016: TDataSource;
    zqry3_016: TZQuery;
    ds3_016: TDataSource;
    zqry4_016: TZQuery;
    ds4_016: TDataSource;
    zqry5_016: TZQuery;
    ds5_016: TDataSource;
    smdbfndlg1_016: TSMDBFindDialog;
    smdbfndlg3_016: TSMDBFindDialog;
    smdbfndlg4_016: TSMDBFindDialog;
    strngfldzqry1_016NIK: TStringField;
    strngfldzqry1_016Nama: TStringField;
    strngfldzqry1_016Alamat: TStringField;
    strngfldzqry1_016Merk_HP: TStringField;
    strngfldzqry1_016Tipe_HP: TStringField;
    strngfldzqry1_016Warna_HP: TStringField;
    strngfldzqry1_016Banyak_HP: TStringField;
    strngfldzqry1_016Metode_bayar: TStringField;
    strngfldzqry1_016no_rekening: TStringField;
    frxrprt1_016: TfrxReport;
    frxrprt3_016: TfrxReport;
    frxrprt4_016: TfrxReport;
    frxdbdtst1_016: TfrxDBDataset;
    frxdbdtst2_016: TfrxDBDataset;
    frxdbdtst3_016: TfrxDBDataset;
    smdbfltrdlg1_016: TSMDBFilterDialog;
    smdbfltrdlg2_016: TSMDBFilterDialog;
    smdbfltrdlg3_016: TSMDBFilterDialog;
    intgrfldzqry1_016total_harga: TIntegerField;
    zqry6max_016: TZQuery;
    zqry6min_016: TZQuery;
    zqry6avg_016: TZQuery;
    ds6max_016: TDataSource;
    ds6min_016: TDataSource;
    ds6avg_016: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

uses Unit4,Unit5;

{$R *.dfm}




end.



