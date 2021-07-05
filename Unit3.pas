unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormPembelian = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    btn2_okpembelian: TButton;
    edt_nama: TEdit;
    edt_alamat: TEdit;
    cbb_merkhp: TComboBox;
    cbb_tipehp: TComboBox;
    cbb_warnahp: TComboBox;
    cbb_metode: TComboBox;
    edt_norek: TEdit;
    btn3_kembali: TButton;
    edt_nik: TEdit;
    lbl10: TLabel;
    btn_reset: TButton;
    lbl11: TLabel;
    edt_totalharga: TEdit;
    edt_banyakhp: TEdit;
    btn_cekharga: TButton;
    procedure btn3_kembaliClick(Sender: TObject);
    procedure btn2_okpembelianClick(Sender: TObject);
    procedure btn_resetClick(Sender: TObject);
    procedure cbb_merkhpChange(Sender: TObject);
    procedure btn_cekhargaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPembelian: TFormPembelian;
  sts:SmallInt;

implementation

uses Unit1,Unit2;

{$R *.dfm}

procedure TFormPembelian.btn3_kembaliClick(Sender: TObject);
begin
FormPembelian.Hide;
Form1.Show;
end;

procedure TFormPembelian.btn2_okpembelianClick(Sender: TObject);
var
  hargaint : Integer;
begin
hargaint := StrToInt(edt_totalharga.Text);

DataModule2.zqry1_016.Append;

DataModule2.zqry1_016.FieldByName('NIK').AsString:=edt_nik.Text;
DataModule2.zqry1_016.FieldByName('Nama').AsString:=edt_nama.Text;
DataModule2.zqry1_016.FieldByName('Alamat').AsString:=edt_alamat.Text;
DataModule2.zqry1_016.FieldByName('Merk_HP').AsString:=cbb_merkhp.Text;
DataModule2.zqry1_016.FieldByName('Tipe_HP').AsString:=cbb_tipehp.Text;
DataModule2.zqry1_016.FieldByName('Warna_HP').AsString:=cbb_warnahp.Text;
DataModule2.zqry1_016.FieldByName('Banyak_HP').AsString:=edt_banyakhp.Text;
DataModule2.zqry1_016.FieldByName('Metode_bayar').AsString:=cbb_metode.Text;
DataModule2.zqry1_016.FieldByName('no_rekening').AsString:=edt_norek.Text;
DataModule2.zqry1_016.FieldByName('total_harga').AsInteger:=hargaint;

DataModule2.zqry1_016.Post;
MessageDlg('Data '+edt_nama.Text+' Berhasil Tersimpan..',mtInformation,[mbOK],0);
end;

procedure TFormPembelian.btn_resetClick(Sender: TObject);
begin
edt_nik.Text:='';
edt_nama.Text:='';
edt_alamat.Text:='';
cbb_merkhp.Text:='';
cbb_tipehp.Text:='';
cbb_warnahp.Text:='';
edt_banyakhp.Text:='';
cbb_metode.Text:='';
edt_norek.Text:='';
edt_totalharga.Text:='';
end;

procedure TFormPembelian.cbb_merkhpChange(Sender: TObject);
begin
if cbb_merkhp.ItemIndex = 0 then
  begin
  cbb_tipehp.Clear;
  cbb_tipehp.Items.Add('Galaxy S10e 6/128GB');
  cbb_tipehp.Items.Add('Galaxy S10 6/128GB');
  cbb_tipehp.Items.Add('Galaxy S10+ 8/128GB');
  cbb_tipehp.Items.Add('Galaxy S10+ 8/512GB');
  cbb_tipehp.Items.Add('Galaxy S10+ 10/1TB');
  end

else if cbb_merkhp.ItemIndex = 1 then
  begin
  cbb_tipehp.Clear;
  cbb_tipehp.Items.Add('iPhone XR 64GB');
  cbb_tipehp.Items.Add('iPhone XR 128GB');
  cbb_tipehp.Items.Add('iPhone XR 256GB');
  cbb_tipehp.Items.Add('iPhone XS 64GB');
  cbb_tipehp.Items.Add('iPhone XS 256GB');
  cbb_tipehp.Items.Add('iPhone XS 512GB');
  cbb_tipehp.Items.Add('iPhone XS Max 64GB');
  cbb_tipehp.Items.Add('iPhone XS Max 256GB');
  cbb_tipehp.Items.Add('iPhone XS Max 512GB');
  end

else if cbb_merkhp.ItemIndex = 2 then
  begin
  cbb_tipehp.Clear;
  cbb_tipehp.Items.Add('Xperia 1 6/64GB');
  cbb_tipehp.Items.Add('Xperia 1 6/128GB');
  cbb_tipehp.Items.Add('Xperia 10 3/64GB');
  cbb_tipehp.Items.Add('Xperia 10 4/64GB');
  cbb_tipehp.Items.Add('Xperia 10 Plus 4/64GB');
  cbb_tipehp.Items.Add('Xperia 10 Plus 6/64GB');

  end;
  end;


procedure TFormPembelian.btn_cekhargaClick(Sender: TObject);
var
  banyakhp,total : Integer;
  hasil : string;
begin
////////////////////////////Samsung Galaxy//////////////////////////////////////
if (cbb_merkhp.ItemIndex = 0) and (cbb_tipehp.ItemIndex = 0) then
  begin
  banyakhp := StrToInt(edt_banyakhp.Text);
  total := banyakhp * 10499000 ;
  hasil := IntToStr(total);
  edt_totalharga.Text:= (hasil);
  end

else if (cbb_merkhp.ItemIndex = 0) and (cbb_tipehp.ItemIndex = 1) then
  begin
  banyakhp := StrToInt(edt_banyakhp.Text);
  total := banyakhp * 12999000 ;
  hasil := IntToStr(total);
  edt_totalharga.Text:= (hasil);
  end

else if (cbb_merkhp.ItemIndex = 0) and (cbb_tipehp.ItemIndex = 2) then
  begin
  banyakhp := StrToInt(edt_banyakhp.Text);
  total := banyakhp * 13999000 ;
  hasil := IntToStr(total);
  edt_totalharga.Text:= (hasil);
  end

else if (cbb_merkhp.ItemIndex = 0) and (cbb_tipehp.ItemIndex = 3) then
  begin
  banyakhp := StrToInt(edt_banyakhp.Text);
  total := banyakhp * 18499000 ;
  hasil := IntToStr(total);
  edt_totalharga.Text:= (hasil);
  end

else if (cbb_merkhp.ItemIndex = 0) and (cbb_tipehp.ItemIndex = 4) then
  begin
  banyakhp := StrToInt(edt_banyakhp.Text);
  total := banyakhp * 23999000 ;
  hasil := IntToStr(total);
  edt_totalharga.Text:= (hasil);
  end

/////////////////////////////////Apple iPhone///////////////////////////////////

else if (cbb_merkhp.ItemIndex = 1) and (cbb_tipehp.ItemIndex = 0) then
  begin
  banyakhp := StrToInt(edt_banyakhp.Text);
  total := banyakhp * 15199000 ;
  hasil := IntToStr(total);
  edt_totalharga.Text:= (hasil);
  end

else if (cbb_merkhp.ItemIndex = 1) and (cbb_tipehp.ItemIndex = 1) then
  begin
  banyakhp := StrToInt(edt_banyakhp.Text);
  total := banyakhp * 16499000 ;
  hasil := IntToStr(total);
  edt_totalharga.Text:= (hasil);
  end

else if (cbb_merkhp.ItemIndex = 1) and (cbb_tipehp.ItemIndex = 2) then
  begin
  banyakhp := StrToInt(edt_banyakhp.Text);
  total := banyakhp * 18299000 ;
  hasil := IntToStr(total);
  edt_totalharga.Text:= (hasil);
  end

else if (cbb_merkhp.ItemIndex = 1) and (cbb_tipehp.ItemIndex = 3) then
  begin
  banyakhp := StrToInt(edt_banyakhp.Text);
  total := banyakhp * 20499000 ;
  hasil := IntToStr(total);
  edt_totalharga.Text:= (hasil);
  end

else if (cbb_merkhp.ItemIndex = 1) and (cbb_tipehp.ItemIndex = 4) then
  begin
  banyakhp := StrToInt(edt_banyakhp.Text);
  total := banyakhp * 23499000 ;
  hasil := IntToStr(total);
  edt_totalharga.Text:= (hasil);
  end

else if (cbb_merkhp.ItemIndex = 1) and (cbb_tipehp.ItemIndex = 5) then
  begin
  banyakhp := StrToInt(edt_banyakhp.Text);
  total := banyakhp * 27499000 ;
  hasil := IntToStr(total);
  edt_totalharga.Text:= (hasil);
  end

else if (cbb_merkhp.ItemIndex = 1) and (cbb_tipehp.ItemIndex = 6) then
  begin
  banyakhp := StrToInt(edt_banyakhp.Text);
  total := banyakhp * 22499000 ;
  hasil := IntToStr(total);
  edt_totalharga.Text:= (hasil);
  end

else if (cbb_merkhp.ItemIndex = 1) and (cbb_tipehp.ItemIndex = 7) then
  begin
  banyakhp := StrToInt(edt_banyakhp.Text);
  total := banyakhp * 25499000 ;
  hasil := IntToStr(total);
  edt_totalharga.Text:= (hasil);
  end

else if (cbb_merkhp.ItemIndex = 1) and (cbb_tipehp.ItemIndex = 8) then
  begin
  banyakhp := StrToInt(edt_banyakhp.Text);
  total := banyakhp * 29499000 ;
  hasil := IntToStr(total);
  edt_totalharga.Text:= (hasil);
  end

/////////////////////////////////Sony Xperia////////////////////////////////////

else if (cbb_merkhp.ItemIndex = 2) and (cbb_tipehp.ItemIndex = 0) then
  begin
  banyakhp := StrToInt(edt_banyakhp.Text);
  total := banyakhp * 13500000 ;
  hasil := IntToStr(total);
  edt_totalharga.Text:= (hasil);
  end

else if (cbb_merkhp.ItemIndex = 2) and (cbb_tipehp.ItemIndex = 1) then
  begin
  banyakhp := StrToInt(edt_banyakhp.Text);
  total := banyakhp * 14500000 ;
  hasil := IntToStr(total);
  edt_totalharga.Text:= (hasil);
  end

else if (cbb_merkhp.ItemIndex = 2) and (cbb_tipehp.ItemIndex = 2) then
  begin
  banyakhp := StrToInt(edt_banyakhp.Text);
  total := banyakhp * 4500000 ;
  hasil := IntToStr(total);
  edt_totalharga.Text:= (hasil);
  end

else if (cbb_merkhp.ItemIndex = 2) and (cbb_tipehp.ItemIndex = 3) then
  begin
  banyakhp := StrToInt(edt_banyakhp.Text);
  total := banyakhp * 5000000 ;
  hasil := IntToStr(total);
  edt_totalharga.Text:= (hasil);
  end

else if (cbb_merkhp.ItemIndex = 2) and (cbb_tipehp.ItemIndex = 4) then
  begin
  banyakhp := StrToInt(edt_banyakhp.Text);
  total := banyakhp * 6000000 ;
  hasil := IntToStr(total);
  edt_totalharga.Text:= (hasil);
  end

else if (cbb_merkhp.ItemIndex = 2) and (cbb_tipehp.ItemIndex = 5) then
  begin
  banyakhp := StrToInt(edt_banyakhp.Text);
  total := banyakhp * 6500000 ;
  hasil := IntToStr(total);
  edt_totalharga.Text:= (hasil);
  end


end;

end.

