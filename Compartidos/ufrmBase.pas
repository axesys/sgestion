unit ufrmBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TfrmBase = class(TForm)
  private
    { Private declarations }
  public
    { Public declarations }
    function CrearForma(sForma: String): TForm;
  end;

var
  frmBase: TfrmBase;

implementation

{$R *.dfm}

function TfrmBase.CrearForma(sForma: String): TForm;
var
  FormClass: TFormClass;
begin
  FormClass:= TFormClass(GetClass('T' + (sForma)));
  if Assigned(FormClass) then
  begin
    Result:= FormClass.Create(Application);
  end;
end;

end.
