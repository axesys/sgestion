unit ufrmFamilias;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCatalogo, Data.DB, System.ImageList,
  Vcl.ImgList, Vcl.DBActns, System.Actions, Vcl.ActnList, Vcl.ComCtrls,
  Vcl.ToolWin, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmFamilias = class(TfrmCatalogo)
    edtNombre: TDBEdit;
    lblNombre: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFamilias: TfrmFamilias;

implementation

uses
  udmData;

{$R *.dfm}

initialization
  RegisterClass(TfrmFamilias);

end.
