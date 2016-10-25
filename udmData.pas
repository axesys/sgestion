unit udmData;

interface

uses
  System.SysUtils, System.Classes, ZAbstractConnection, ZConnection, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Datasnap.Provider,
  Datasnap.DBClient;

type
  TdmData = class(TDataModule)
    cntData: TZConnection;
    qryClientes: TZQuery;
    cdsClientes: TClientDataSet;
    dspClientes: TDataSetProvider;
    dsClientes: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsAfterPost(DataSet: TDataSet);
    procedure cdsClientesNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    function GetId: String;
  end;

var
  dmData: TdmData;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

function TdmData.GetId: String;
var
  Guid : TGuid;
begin
  CreateGuid(Guid);
  Exit(GuidToString(Guid))
end;

procedure TdmData.cdsAfterPost(DataSet: TDataSet);
begin
  (DataSet as TClientDataSet).ApplyUpdates(0);
end;

procedure TdmData.cdsClientesNewRecord(DataSet: TDataSet);
begin
  (DataSet as TClientDataSet).FieldByName(StringReplace(
    DataSet.Name, 'cds', 'ID_', [])).AsString:= GetID;
end;

procedure TdmData.DataModuleCreate(Sender: TObject);
begin
  cdsClientes.Open;
end;

end.
