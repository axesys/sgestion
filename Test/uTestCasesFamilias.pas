unit uTestCasesFamilias;

interface

uses
  TestFrameWork, Vcl.Forms, DB, SysUtils, udmData, ufrmMain, ufrmCatalogo;

type
  TTestCaseFamilias = class(TTestCase)
  const
    CATALOGO = 'Familias';
  private
    frmCatalogo: TfrmCatalogo;
    dtsCatalogo: TDataSet;
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure TestMenu;
    procedure TestData;
    procedure TestNuevo;
    procedure TestModifica;
    procedure TestBusca;
    procedure TestCancela;
    procedure TestElimina;
  end;

implementation

procedure TTestCaseFamilias.SetUp;
begin
  dmData:= TdmData.Create(Application);
  frmMain:= TfrmMain.Create(Application);
  frmMain.actFamilias.Execute;
  frmCatalogo:= TfrmCatalogo(Application.FindComponent('frm' + CATALOGO));
  dtsCatalogo:= frmCatalogo.grdCatalogo.DataSource.DataSet;
end;

procedure TTestCaseFamilias.TearDown;
begin
  FreeAndNil(frmCatalogo);
  FreeAndNil(frmMain);
  FreeAndNil(dmData);
end;

procedure TTestCaseFamilias.TestMenu;
begin
  Check(Assigned(frmCatalogo), 'Catalogo ' + CATALOGO + ' no asignado');
end;

procedure TTestCaseFamilias.TestData;
begin
  Check(Assigned(frmCatalogo.grdCatalogo.DataSource), 'Catalogo ' + CATALOGO + ' sin datos');
end;

procedure TTestCaseFamilias.TestNuevo;
begin
  dtsCatalogo.Insert;
  dtsCatalogo.FieldByName('NOMBRE').Value:= 'Primero';
  dtsCatalogo.Post;
  Check(dtsCatalogo.Locate('NOMBRE', 'Primero', []), 'Registro no guardado');
end;

procedure TTestCaseFamilias.TestModifica;
begin
  dtsCatalogo.Edit;
  dtsCatalogo.FieldByName('NOMBRE').Value:= 'Movido';
  dtsCatalogo.Post;
  Check(dtsCatalogo.Locate('NOMBRE', 'Movido', []), 'Registro no modificado');
end;

procedure TTestCaseFamilias.TestBusca;
begin
  Check(dtsCatalogo.Locate('NOMBRE', 'Movido', []), 'Registro no encontrado');
end;

procedure TTestCaseFamilias.TestCancela;
begin
  dtsCatalogo.Edit;
  dtsCatalogo.FieldByName('NOMBRE').Value:= 'Cambiado';
  dtsCatalogo.Cancel;
  Check(dtsCatalogo.Locate('NOMBRE', 'Movido', []), 'Registro no cancelado');
end;

procedure TTestCaseFamilias.TestElimina;
begin
  dtsCatalogo.Delete;
  Check(not dtsCatalogo.Locate('NOMBRE', 'Movido', []), 'Registro no eliminado');
end;

initialization
  TestFramework.RegisterTest(TTestCaseFamilias.Suite);

end.
