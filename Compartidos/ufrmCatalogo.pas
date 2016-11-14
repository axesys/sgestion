unit ufrmCatalogo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  udmDatos, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.DBActns, System.Actions, Vcl.ActnList, Vcl.Menus, Vcl.ComCtrls,
  Vcl.ToolWin, System.ImageList, Vcl.ImgList;

type
  TDataModuleClass = class of TDataModule;
  TfrmCatalogo = class(TForm)
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
    actInforme: TAction;
    procedure grdCatalogoDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actInformeExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    dmData: TdmDatos;
  public
    { Public declarations }
  protected
    function CrearDatos(sDatos: String): TDataModule;
  end;

var
  frmCatalogo: TfrmCatalogo;

implementation

{$R *.dfm}

uses udmBase;

function TfrmCatalogo.CrearDatos(sDatos: String): TDataModule;
var
  DataClass: TDataModuleClass;
begin
  Result:= nil;
  DataClass:= TDataModuleClass(GetClass('T' + (sDatos)));
  if Assigned(DataClass) then
  begin
    Result:= DataClass.Create(Application);
  end;
end;

procedure TfrmCatalogo.actInformeExecute(Sender: TObject);
begin
  dmBase.MostrarReporte(StringReplace(Name, 'frm', '', []));
end;

procedure TfrmCatalogo.FormCreate(Sender: TObject);
var
  sDatos: string;
begin
  inherited;
  pgcCatalogo.ActivePage:= tsListado;
  sDatos:= StringReplace(Name, 'frm', 'dm', []);
  dmData:= CrearDatos(sDatos) as TdmDatos;
  if Assigned(dmData) then
  begin
    grdCatalogo.DataSource:= dmData.dsDatos;
    actGuardar.DataSource:= dmData.dsDatos;
    actNuevo.DataSource:= dmData.dsDatos;
    actEliminar.DataSource:= dmData.dsDatos;
    actCancelar.DataSource:= dmData.dsDatos;
  end;
end;

procedure TfrmCatalogo.FormDestroy(Sender: TObject);
begin
  FreeAndNil(dmData);
end;

procedure TfrmCatalogo.grdCatalogoDblClick(Sender: TObject);
begin
  pgcCatalogo.ActivePage:= tsEditor;
end;

end.
