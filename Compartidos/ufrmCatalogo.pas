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
    procedure actNuevoExecute(Sender: TObject);
    procedure actModificarExecute(Sender: TObject);
    procedure actEliminarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCatalogo: TfrmCatalogo;

implementation

{$R *.dfm}

uses udmData, ufrmEditor;

procedure TfrmCatalogo.actEliminarExecute(Sender: TObject);
var
  DataSet: TDataSet;
  sForma: String;
begin
  inherited;
  sForma:= StringReplace(Self.Name, 'frm', 'frmEditor', []);
  with CrearForma(sForma) as TfrmEditor do
  try
    pcEditor.Enabled:= False;
    if Assigned(actEliminar.DataSource) and
       Assigned(actEliminar.DataSource.DataSet) then
    begin
      DataSet:= actEliminar.DataSource.DataSet;
      if ShowModal = mrOk then
        DataSet.Delete
      else
        DataSet.Cancel;
    end;
  finally
    Free;
  end;
end;

procedure TfrmCatalogo.actModificarExecute(Sender: TObject);
var
  DataSet: TDataSet;
  sForma: String;
begin
  inherited;
  sForma:= StringReplace(Self.Name, 'frm', 'frmEditor', []);
  with CrearForma(sForma) do
  try
    if Assigned(actModificar.DataSource) and
       Assigned(actModificar.DataSource.DataSet) then
    begin
      DataSet:= actModificar.DataSource.DataSet;
      DataSet.Edit;
      if ShowModal = mrOk then
        DataSet.Post
      else
        DataSet.Cancel;
    end;
  finally
    Free;
  end;
end;

procedure TfrmCatalogo.actNuevoExecute(Sender: TObject);
var
  DataSet: TDataSet;
  sForma: String;
begin
  inherited;
  sForma:= StringReplace(Self.Name, 'frm', 'frmEditor', []);
  with CrearForma(sForma) do
  try
    if Assigned(actNuevo.DataSource) and
       Assigned(actNuevo.DataSource.DataSet) then
    begin
      DataSet:= actNuevo.DataSource.DataSet;
      DataSet.Insert;
      if ShowModal = mrOk then
        DataSet.Post
      else
        DataSet.Cancel;
    end;
  finally
    Free;
  end;
end;

end.
