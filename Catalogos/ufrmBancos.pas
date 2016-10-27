unit ufrmBancos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCatalogo, Data.DB, System.ImageList,
  Vcl.ImgList, Vcl.DBActns, System.Actions, Vcl.ActnList, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmBancos = class(TfrmCatalogo)
    lblNombre: TLabel;
    edtNombre: TDBEdit;
    lblBic: TLabel;
    edtBic: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBancos: TfrmBancos;

implementation

uses
  udmData;

{$R *.dfm}

initialization
  RegisterClass(TfrmBancos);

end.
