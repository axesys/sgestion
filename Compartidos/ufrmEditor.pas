unit ufrmEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmBase, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TfrmEditor = class(TfrmBase)
    pcEditor: TPageControl;
    tabGeneral: TTabSheet;
    btnAceptar: TButton;
    btnCancelar: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEditor: TfrmEditor;

implementation

{$R *.dfm}

end.
