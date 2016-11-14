program SGestion;

uses
  Vcl.Forms,
  ufrmMain in 'ufrmMain.pas' {frmMain},
  udmBase in 'udmBase.pas' {dmBase: TDataModule},
  ufrmCatalogo in 'Compartidos\ufrmCatalogo.pas' {frmCatalogo},
  udmDatos in 'Compartidos\udmDatos.pas' {dmDatos: TDataModule},
  udmDetalles in 'Compartidos\udmDetalles.pas' {dmDetalles: TDataModule},
  ufrmOperacion in 'Compartidos\ufrmOperacion.pas' {frmOperacion};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmBase, dmBase);
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
