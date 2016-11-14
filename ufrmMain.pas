unit ufrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.Actions,
  Vcl.ActnList, Vcl.Menus, Vcl.ComCtrls,
  Vcl.ToolWin, System.ImageList, Vcl.ImgList, Vcl.Buttons;

type
  TfrmMain = class(TForm)
    actMain: TActionList;
    pcMain: TPageControl;
    tbMain: TToolBar;
    btnCatalogos: TToolButton;
    mnuCatalogos: TPopupMenu;
    imgMain: TImageList;
    btnOperaciones: TToolButton;
    mnuOperaciones: TPopupMenu;
    btnClose: TBitBtn;
    actClose: TAction;
    procedure actExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actCloseUpdate(Sender: TObject);
    procedure actCloseExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i: integer;
begin
  for i:= Pred(pcMain.PageCount) downto 0 do
    pcMain.Pages[i].Free;
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

procedure TfrmMain.actCloseExecute(Sender: TObject);
begin
  pcMain.ActivePage.Free;
end;

procedure TfrmMain.actCloseUpdate(Sender: TObject);
begin
  actClose.Visible:= Assigned(pcMain.ActivePage);
end;

procedure TfrmMain.actExecute(Sender: TObject);
begin
  CrearVentana(Sender as TAction);
  actClose.Update;
end;

end.
