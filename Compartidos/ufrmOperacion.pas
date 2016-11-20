unit ufrmOperacion;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCatalogo, Data.DB,
  System.Actions, Vcl.ActnList,
  Vcl.DBGrids, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, System.ImageList,
  Vcl.ImgList, Vcl.DBActns, Vcl.Grids, Vcl.ToolWin;

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
