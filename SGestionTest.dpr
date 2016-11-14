program SGestionTest;

uses
  Vcl.Forms,
  TestFrameWork,
  GUITestRunner,
  ufrmMain in 'ufrmMain.pas' {frmMain},
  udmDatos in 'Compartidos\udmDatos.pas' {dmDatos: TDataModule},
  udmDetalles in 'Compartidos\udmDetalles.pas' {dmDetalles: TDataModule},
  ufrmCatalogo in 'Compartidos\ufrmCatalogo.pas' {frmCatalogo},
  ufrmOperacion in 'Compartidos\ufrmOperacion.pas' {frmOperacion},
  udmBase in 'udmBase.pas' {dmBase: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  GUITestRunner.RunRegisteredTests;
end.
