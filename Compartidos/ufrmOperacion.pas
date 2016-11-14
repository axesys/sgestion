unit ufrmOperacion;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCatalogo, Data.DB, System.ImageList,
  Vcl.ImgList, Vcl.DBActns, System.Actions, Vcl.ActnList, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, Vcl.ToolWin, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TfrmOperacion = class(TfrmCatalogo)
    pnlDetalles: TPanel;
    grdDetalles: TDBGrid;
    navDatos: TDBNavigator;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOperacion: TfrmOperacion;

implementation

{$R *.dfm}

end.
