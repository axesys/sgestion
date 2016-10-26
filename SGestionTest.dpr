program SGestionTest;

uses
  Vcl.Forms,
  TestFrameWork,
  GUITestRunner,
  SGestionTestCases in 'SGestionTestCases.pas';

{$R *.res}

begin
  Application.Initialize;
  GUITestRunner.RunRegisteredTests;
end.
