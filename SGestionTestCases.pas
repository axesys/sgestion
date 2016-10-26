unit SGestionTestCases;

interface

uses
  TestFrameWork, Vcl.Forms, SysUtils, udmData, ufrmMain, ufrmCatalogo;

type
  TTestCaseFamilias = class(TTestCase)
  const
    CATALOGO = 'Familias';
  private
    frmCatalogo: TfrmCatalogo;
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure TestMenu;
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
end;

procedure TTestCaseFamilias.TearDown;
begin
  FreeAndNil(frmCatalogo);
  FreeAndNil(frmMain);
  FreeAndNil(dmData);
end;

procedure TTestCaseFamilias.TestMenu;
begin
  Check(Assigned(frmCatalogo), 'Catalogo ' + CATALOGO + ' no asignado')
end;

procedure TTestCaseFamilias.TestNuevo;
begin
  dmData.cdsFamilias.Insert;
  dmData.cdsFamilias.FieldByName('NOMBRE').Value:= 'Primero';
  dmData.cdsFamilias.Post;
  Check(dmData.cdsFamilias.Locate('NOMBRE', 'Primero', []), 'Registro no guardado');
end;

procedure TTestCaseFamilias.TestModifica;
begin
  dmData.cdsFamilias.Edit;
  dmData.cdsFamilias.FieldByName('NOMBRE').Value:= 'Movido';
  dmData.cdsFamilias.Post;
  Check(dmData.cdsFamilias.Locate('NOMBRE', 'Movido', []), 'Registro no guardado');
end;

procedure TTestCaseFamilias.TestBusca;
begin
  Check(dmData.cdsFamilias.Locate('NOMBRE', 'Movido', []), 'Registro no encontrado');
end;

procedure TTestCaseFamilias.TestCancela;
begin
  dmData.cdsFamilias.Edit;
  dmData.cdsFamilias.FieldByName('NOMBRE').Value:= 'Cambiado';
  dmData.cdsFamilias.Cancel;
  Check(dmData.cdsFamilias.Locate('NOMBRE', 'Movido', []), 'Registro no encontrado');
end;

procedure TTestCaseFamilias.TestElimina;
begin
  dmData.cdsFamilias.Delete;
  Check(not dmData.cdsFamilias.Locate('NOMBRE', 'Movido', []), 'Registro no eliminado');
end;

initialization
  TestFramework.RegisterTest(TTestCaseFamilias.Suite);

end.
