unit uTestCasesBancos;

interface

uses
  TestFrameWork, Vcl.Forms, DB, SysUtils, udmData, ufrmMain, ufrmCatalogo;

type
  TTestCaseBancos = class(TTestCase)
  const
    CATALOGO = 'Bancos';
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

procedure TTestCaseBancos.SetUp;
begin
  dmData:= TdmData.Create(Application);
  frmMain:= TfrmMain.Create(Application);
  frmMain.actBancos.Execute;
  frmCatalogo:= TfrmCatalogo(Application.FindComponent('frm' + CATALOGO));
  dtsCatalogo:= frmCatalogo.grdCatalogo.DataSource.DataSet;
end;

procedure TTestCaseBancos.TearDown;
begin
  FreeAndNil(frmCatalogo);
  FreeAndNil(frmMain);
  FreeAndNil(dmData);
end;

procedure TTestCaseBancos.TestMenu;
begin
  Check(Assigned(frmCatalogo), 'Catalogo ' + CATALOGO + ' no asignado');
end;

procedure TTestCaseBancos.TestData;
begin
  Check(Assigned(frmCatalogo.grdCatalogo.DataSource), 'Catalogo ' + CATALOGO + ' sin datos');
end;

procedure TTestCaseBancos.TestNuevo;
begin
  dtsCatalogo.Insert;
  dtsCatalogo.FieldByName('NOMBRE').Value:= 'Primero';
  dtsCatalogo.Post;
  Check(dtsCatalogo.Locate('NOMBRE', 'Primero', []), 'Registro no guardado');
end;

procedure TTestCaseBancos.TestModifica;
begin
  dtsCatalogo.Edit;
  dtsCatalogo.FieldByName('NOMBRE').Value:= 'Movido';
  dtsCatalogo.Post;
  Check(dtsCatalogo.Locate('NOMBRE', 'Movido', []), 'Registro no modificado');
end;

procedure TTestCaseBancos.TestBusca;
begin
  Check(dtsCatalogo.Locate('NOMBRE', 'Movido', []), 'Registro no encontrado');
end;

procedure TTestCaseBancos.TestCancela;
begin
  dtsCatalogo.Edit;
  dtsCatalogo.FieldByName('NOMBRE').Value:= 'Cambiado';
  dtsCatalogo.Cancel;
  Check(dtsCatalogo.Locate('NOMBRE', 'Movido', []), 'Registro no cancelado');
end;

procedure TTestCaseBancos.TestElimina;
begin
  dtsCatalogo.Delete;
  Check(not dtsCatalogo.Locate('NOMBRE', 'Movido', []), 'Registro no eliminado');
end;

initialization
  TestFramework.RegisterTest(TTestCaseBancos.Suite);

end.
