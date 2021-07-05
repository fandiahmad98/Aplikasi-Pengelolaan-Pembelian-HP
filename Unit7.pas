unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, SMDBCtrl, Grids, DBGrids, SMDBGrid, StdCtrls;

type
  TFormStatistik = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    edt_pengali: TEdit;
    lbl5: TLabel;
    edt_hasilpengali: TEdit;
    btn_hitungstat: TButton;
    lbl6: TLabel;
    lbl7: TLabel;
    smdbgrd_max: TSMDBGrid;
    smdbgrd_min: TSMDBGrid;
    smdbgrd_avg: TSMDBGrid;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl3: TLabel;
    edt_pengalimin: TEdit;
    edt_hasilmin: TEdit;
    lbl11: TLabel;
    edt_pengalimax: TEdit;
    edt_totalmax: TEdit;
    procedure btn_hitungstatClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormStatistik: TFormStatistik;

implementation

uses
  Unit5,Unit2;

{$R *.dfm}

procedure TFormStatistik.btn_hitungstatClick(Sender: TObject);
var nilairata2,nilaitotal,nilaipengali : Integer;
nilairatamax,nilaitotalmax,nilaipengalimax : Integer;
nilairatamin,nilaitotalmin,nilaipengalimin : Integer;
begin
  //perhitungan rata - rata
nilairata2 := smdbgrd_avg.Fields[0].AsInteger ;
nilaipengali := StrToInt(edt_pengali.Text);

nilaitotal := nilairata2 * nilaipengali;

edt_hasilpengali.Text:= IntToStr(nilaitotal);

//perhitungan nilai terbesar
nilairatamax := smdbgrd_max.Fields[0].AsInteger ;
nilaipengalimax := StrToInt(edt_pengalimax.Text);

nilaitotalmax := nilairatamax * nilaipengalimax;

edt_totalmax.Text:= IntToStr(nilaitotalmax);

//perhitungan nilai terkecil
nilairatamin := smdbgrd_min.Fields[0].AsInteger ;
nilaipengalimin := StrToInt(edt_pengalimin.Text);

nilaitotalmax := nilairatamin * nilaipengalimin;

edt_hasilmin.Text:= IntToStr(nilaitotalmin);

end;

end.
