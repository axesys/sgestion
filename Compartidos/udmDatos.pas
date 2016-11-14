unit udmDatos;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Datasnap.Provider;

type
  TdmDatos = class(TDataModule)
    dsDatos: TDataSource;
    dspDatos: TDataSetProvider;
    cdsDatos: TClientDataSet;
    qryDatos: TZQuery;
    procedure cdsNewRecord(DataSet: TDataSet);
    procedure cdsAfterPost(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    function GetId: string;
  end;

var
  dmDatos: TdmDatos;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

function TdmDatos.GetId: string;
var
  Guid : TGuid;
begin
  CreateGuid(Guid);
  Exit(GuidToString(Guid));
end;

procedure TdmDatos.cdsAfterPost(DataSet: TDataSet);
begin
  if Assigned(DataSet.DataSetField) then
    DataSet.DataSetField.DataSet.Edit
  else
    (DataSet as TClientDataSet).ApplyUpdates(0);
end;

procedure TdmDatos.cdsNewRecord(DataSet: TDataSet);
var
  ID: string;
begin
  ID:= StringReplace(Name, 'dm', 'ID_', []);
  if Assigned(DataSet.DataSetField) then
  begin
    DataSet.FieldByName(ID).AsString:= DataSet.DataSetField.DataSet.
      FieldByName(ID).AsString;
    ID:= ID + '_Datos';
  end;
  DataSet.FieldByName(ID).AsString:= GetID;
end;

procedure TdmDatos.DataModuleCreate(Sender: TObject);
var
  DataSet: TDataSet;
  i: Integer;
begin
  for i:= 0 to Pred(ComponentCount) do
  begin
    if Components[i] is TClientDataset then
    begin
      DataSet:= (Components[i] as TDataSet);
      DataSet.OnNewRecord:= cdsNewRecord;
      DataSet.AfterPost:= cdsAfterPost;
      DataSet.AfterDelete:= cdsAfterPost;
      DataSet.Open;
    end;
  end;
end;

end.
