program SGestion;

uses
  Vcl.Forms,
  ufrmMain in 'ufrmMain.pas' {frmMain},
  udmData in 'udmData.pas' {dmData: TDataModule},
  ufrmBase in 'Compartidos\ufrmBase.pas' {frmBase},
  ufrmCatalogo in 'Compartidos\ufrmCatalogo.pas' {frmCatalogo},
  ufrmClientes in 'Catalogos\ufrmClientes.pas' {frmClientes},
  ufrmEditor in 'Compartidos\ufrmEditor.pas' {frmEditor},
  ufrmEditorClientes in 'Catalogos\ufrmEditorClientes.pas' {frmEditorClientes};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmData, dmData);
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
