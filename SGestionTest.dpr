program SGestionTest;

uses
  Vcl.Forms,
  TestFrameWork,
  GUITestRunner,
  SGestionTestCases in 'SGestionTestCases.pas',
  udmData in 'udmData.pas' {dmData: TDataModule},
  ufrmMain in 'ufrmMain.pas' {frmMain},
  ufrmFamilias in 'Catalogos\ufrmFamilias.pas',
  ufrmBase in 'Compartidos\ufrmBase.pas' {frmBase},
  ufrmCatalogo in 'Compartidos\ufrmCatalogo.pas' {frmCatalogo};

{$R *.res}

begin
  Application.Initialize;
  GUITestRunner.RunRegisteredTests;
end.
