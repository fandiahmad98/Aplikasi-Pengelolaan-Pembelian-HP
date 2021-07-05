program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {DataModule2: TDataModule},
  Unit3 in 'Unit3.pas' {FormPembelian},
  Unit4 in 'Unit4.pas' {FormAdmin},
  Unit5 in 'Unit5.pas' {FormTabelAdmin},
  Unit6 in 'Unit6.pas' {FormCek},
  Unit7 in 'Unit7.pas' {FormStatistik};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFormTabelAdmin, FormTabelAdmin);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.CreateForm(TFormPembelian, FormPembelian);
  Application.CreateForm(TFormAdmin, FormAdmin);
  Application.CreateForm(TFormCek, FormCek);
  Application.CreateForm(TFormStatistik, FormStatistik);
  Application.Run;
end.
