unit ufrmPresupuestos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCatalogo, Data.DB, System.ImageList,
  Vcl.ImgList, Vcl.DBActns, System.Actions, Vcl.ActnList, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, Vcl.ToolWin, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Mask;

type
  TfrmPresupuestos = class(TfrmCatalogo)
    dbgDatos: TDBGrid;
    DBEdit1: TDBEdit;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPresupuestos: TfrmPresupuestos;

implementation

uses
  udmData;

{$R *.dfm}

initialization
  RegisterClass(TfrmPresupuestos);

end.
