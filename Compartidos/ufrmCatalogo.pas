unit ufrmCatalogo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, ufrmBase, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.DBActns, System.Actions, Vcl.ActnList, Vcl.Menus, Vcl.ComCtrls,
  Vcl.ToolWin, System.ImageList, Vcl.ImgList;

type
  TfrmCatalogo = class(TfrmBase)
    actCatalogo: TActionList;
    actNuevo: TDataSetInsert;
    actEliminar: TDataSetDelete;
    actModificar: TDataSetEdit;
    grdCatalogo: TDBGrid;
    tbCatalogo: TToolBar;
    brnNuevo: TToolButton;
    btnModificar: TToolButton;
    btnEliminar: TToolButton;
    imgImagenes: TImageList;
    pgcCatalogo: TPageControl;
    tsListado: TTabSheet;
    tsEditor: TTabSheet;
    actGuardar: TDataSetPost;
    btnGuardar: TToolButton;
    btnCancelar: TToolButton;
    actCancelar: TDataSetCancel;
    imgImagenesGris: TImageList;
    procedure grdCatalogoDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCatalogo: TfrmCatalogo;

implementation

{$R *.dfm}

uses udmData;

procedure TfrmCatalogo.FormCreate(Sender: TObject);
var
  sData: string;
begin
  sData:= StringReplace(Name, 'frm', 'ds', []);
  grdCatalogo.DataSource:= dmData.FindComponent(sData) as TDataSource;
  if Assigned(grdCatalogo.DataSource) then
  begin
    actGuardar.DataSource:= grdCatalogo.DataSource;
    actNuevo.DataSource:= grdCatalogo.DataSource;
    actEliminar.DataSource:= grdCatalogo.DataSource;
    actCancelar.DataSource:= grdCatalogo.DataSource;
  end;
end;

procedure TfrmCatalogo.grdCatalogoDblClick(Sender: TObject);
begin
  pgcCatalogo.ActivePage:= tsEditor;
end;

end.
