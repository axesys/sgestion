unit ufrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.Actions,
  Vcl.ActnList, Vcl.Menus, Vcl.ComCtrls,
  Vcl.ToolWin, System.ImageList, Vcl.ImgList;

type
  TfrmMain = class(TForm)
    actMain: TActionList;
    actFamilias: TAction;
    pcMain: TPageControl;
    tbMain: TToolBar;
    btnCatalogos: TToolButton;
    mnuCatalogos: TPopupMenu;
    mnuFamilias: TMenuItem;
    imgMain: TImageList;
    actBancos: TAction;
    mnuBancos: TMenuItem;
    actPresupuestos: TAction;
    btnOperaciones: TToolButton;
    mnuOperaciones: TPopupMenu;
    mnuPresupuestos: TMenuItem;
    procedure actExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    function CrearVentana(actAccion: TAction):  TForm;
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses udmData;

function TfrmMain.CrearVentana(actAccion: TAction): TForm;
var
  sForma: String;
  FormClass: TFormClass;
begin
  sForma:= StringReplace(actAccion.Name, 'act', 'frm', []);
  Result:= TForm(Application.FindComponent(sForma));
  if Assigned(Result) then
    pcMain.ActivePage:= Result.Parent as TTabSheet
  else
  begin
    FormClass:= TFormClass(GetClass('T' + sForma));
    if Assigned(FormClass) then
    begin
      Result:= FormClass.Create(Application);
      Result.ManualDock(pcMain);
      Result.Show;
      pcMain.ActivePageIndex:= Pred(pcMain.PageCount);
      Result.Parent:= pcMain.ActivePage;
    end;
  end;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
var
  i: Integer;
  actAction: TAction;
begin
  for i:= 0 to Pred(ComponentCount) do
  begin
    if Components[i] is TAction then
    begin
      actAction:= (Components[i] as TAction);
      if not Assigned(actAction.OnExecute) then
      begin
        actAction.OnExecute:= actExecute;
      end;
    end;
  end;
end;

procedure TfrmMain.actExecute(Sender: TObject);
begin
  CrearVentana(Sender as TAction);
end;

end.
