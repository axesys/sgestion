unit ufrmEditorFamilias;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmEditor, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.Mask, Vcl.DBCtrls;

type
  TfrmEditorFamilias = class(TfrmEditor)
    edtNombre: TDBEdit;
    lblNombre: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEditorFamilias: TfrmEditorFamilias;

implementation

uses
  udmData;

{$R *.dfm}

initialization
  RegisterClass(TfrmEditorFamilias);

end.
