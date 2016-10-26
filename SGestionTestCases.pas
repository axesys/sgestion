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
    procedure TestEditorNuevo;
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

procedure TTestCaseFamilias.TestEditorNuevo;
begin
end;


initialization
  TestFramework.RegisterTest(TTestCaseFamilias.Suite);

end.
