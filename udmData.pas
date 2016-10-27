unit udmData;

interface

uses
  System.SysUtils, System.Classes, ZAbstractConnection, ZConnection, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Datasnap.Provider,
  Datasnap.DBClient;

type
  TdmData = class(TDataModule)
    cntData: TZConnection;
    dsFamilias: TDataSource;
    dspFamilias: TDataSetProvider;
    cdsFamilias: TClientDataSet;
    qryFamilias: TZQuery;
    dsBancos: TDataSource;
    dspBancos: TDataSetProvider;
    cdsBancos: TClientDataSet;
    qryBancos: TZQuery;
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsNewRecord(DataSet: TDataSet);
    procedure cdsAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
    function GetId: string;
  public
    { Public declarations }
  end;

var
  dmData: TdmData;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

uses
  Dialogs;

function TdmData.GetId: string;
var
  Guid : TGuid;
begin
  CreateGuid(Guid);
  Exit(GuidToString(Guid));
end;

procedure TdmData.cdsAfterPost(DataSet: TDataSet);
begin
  (DataSet as TClientDataSet).ApplyUpdates(0);
end;

procedure TdmData.cdsNewRecord(DataSet: TDataSet);
begin
  (DataSet as TClientDataSet).FieldByName(StringReplace(
    DataSet.Name, 'cds', 'ID_', [])).AsString:= GetID;
end;

procedure TdmData.DataModuleCreate(Sender: TObject);
var
  DataSet: TDataSet;
  i: Integer;
begin
  for i:= 0 to Pred(ComponentCount) do
  begin
    if Components[i] is TClientDataset then
    begin
      DataSet:= (Components[i] as TClientDataSet);
      if not Assigned(DataSet.DataSetField) then
      begin
        DataSet.OnNewRecord:= cdsNewRecord;
        DataSet.AfterPost:= cdsAfterPost;
        DataSet.AfterDelete:= cdsAfterPost;
        DataSet.Open;
      end;
    end;
  end;
end;

end.
