program SGestion;

uses
  Vcl.Forms,
  //MidasLib,
  ufrmMain in 'ufrmMain.pas' {frmMain},
  udmData in 'udmData.pas' {dmData: TDataModule},
  ufrmBase in 'Compartidos\ufrmBase.pas' {frmBase},
  ufrmCatalogo in 'Compartidos\ufrmCatalogo.pas' {frmCatalogo},
  ufrmFamilias in 'Catalogos\ufrmFamilias.pas' {frmFamilias},
  ufrmBancos in 'Catalogos\ufrmBancos.pas' {frmBancos},
  ufrmPresupuestos in 'Catalogos\ufrmPresupuestos.pas' {frmPresupuestos},
  ufrmProductos in 'Catalogos\ufrmProductos.pas' {frmProductos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmData, dmData);
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
