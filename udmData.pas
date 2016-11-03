unit udmData;

interface

uses
  System.SysUtils, System.Classes, ZAbstractConnection, ZConnection, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Datasnap.Provider,
  Datasnap.DBClient, ZSqlUpdate;

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
    dsPresupuestos: TDataSource;
    dspPresupuestos: TDataSetProvider;
    cdsPresupuestos: TClientDataSet;
    dsPresupuestosDatos: TDataSource;
    cdsPresupuestos_Datos: TClientDataSet;
    dsPresupuestos_Datos: TDataSource;
    qryPresupuestos: TZQuery;
    qryPresupuestos_Datos: TZQuery;
    cdsPresupuestosID_PRESUPUESTOS: TWideStringField;
    cdsPresupuestosFECHA: TDateTimeField;
    cdsPresupuestosID_CLIENTES: TWideStringField;
    cdsPresupuestosNOMBRE: TWideStringField;
    cdsPresupuestosDIRECCION: TWideStringField;
    cdsPresupuestosCODIGO_POSTAL: TWideStringField;
    cdsPresupuestosCIUDAD: TWideStringField;
    cdsPresupuestosPROVINCIA: TWideStringField;
    cdsPresupuestosNIF: TWideStringField;
    cdsPresupuestosCONRE: TFloatField;
    cdsPresupuestosCONIRPF: TFloatField;
    cdsPresupuestosSINIVA: TFloatField;
    cdsPresupuestosPAGADO: TFloatField;
    cdsPresupuestosDESCUENTO: TFloatField;
    cdsPresupuestosIRPF: TFloatField;
    cdsPresupuestosBASE_IMPONIBLE1: TFloatField;
    cdsPresupuestosIVA1: TFloatField;
    cdsPresupuestosRE1: TFloatField;
    cdsPresupuestosBASE_IMPONIBLE2: TFloatField;
    cdsPresupuestosIVA2: TFloatField;
    cdsPresupuestosRE2: TFloatField;
    cdsPresupuestosBASE_IMPONIBLE3: TFloatField;
    cdsPresupuestosIVA3: TFloatField;
    cdsPresupuestosRE3: TFloatField;
    cdsPresupuestosID_FORMAS_PAGO: TWideStringField;
    cdsPresupuestosNUMERO_CUENTA: TWideStringField;
    cdsPresupuestosTOTAL: TFloatField;
    cdsPresupuestosOBSERVACIONES: TWideMemoField;
    cdsPresupuestosTRASPASADO: TFloatField;
    cdsPresupuestosTARIFA: TIntegerField;
    cdsPresupuestosID_COMERCIALES: TWideStringField;
    cdsPresupuestosCOMISION: TFloatField;
    cdsPresupuestosBIC: TWideStringField;
    cdsPresupuestosTOTAL_IVA1: TFloatField;
    cdsPresupuestosTOTAL_IVA2: TFloatField;
    cdsPresupuestosTOTAL_IVA3: TFloatField;
    cdsPresupuestosTOTAL_RE1: TFloatField;
    cdsPresupuestosTOTAL_RE2: TFloatField;
    cdsPresupuestosTOTAL_RE3: TFloatField;
    cdsPresupuestosTOTAL_IRPF: TFloatField;
    cdsPresupuestosTOTAL_DESCUENTO: TFloatField;
    cdsPresupuestosTOTAL_PENDIENTE: TFloatField;
    cdsPresupuestosID_USUARIO: TWideStringField;
    cdsPresupuestosqryPresupuestos_Datos: TDataSetField;
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
  Vcl.Dialogs;

function TdmData.GetId: string;
var
  Guid : TGuid;
begin
  CreateGuid(Guid);
  Exit(GuidToString(Guid));
end;

procedure TdmData.cdsAfterPost(DataSet: TDataSet);
var
  sName: String;
  dtsDetail: TDataSet;
begin
  sName:= StringReplace(DataSet.Name, 'cds', 'qry', []) + '_Datos';
  dtsDetail:= dmData.FindComponent(sName) as TDataSet;
  if Assigned(dtsDetail) then
    dtsDetail.Open;
  if Assigned(DataSet.DataSetField) then
    DataSet.DataSetField.DataSet.Edit
  else
    (DataSet as TClientDataSet).ApplyUpdates(0);
end;

procedure TdmData.cdsNewRecord(DataSet: TDataSet);
var
  ID: string;
begin
  (DataSet as TClientDataSet).FieldByName(StringReplace(
    DataSet.Name, 'cds', 'ID_', [])).AsString:= GetID;
  if Assigned(DataSet.DataSetField) then
  begin
    ID:= StringReplace(DataSet.Name, 'cds', 'ID_', []);
    ID:= StringReplace(ID, '_Datos', '', []);
    DataSet.FieldByName(ID).AsString:= DataSet.DataSetField.DataSet.
      FieldByName(ID).AsString;
  end;
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
      DataSet:= (Components[i] as TDataSet);
      DataSet.OnNewRecord:= cdsNewRecord;
      DataSet.AfterPost:= cdsAfterPost;
      DataSet.AfterDelete:= cdsAfterPost;
      DataSet.Open;
    end;
  end;
end;

end.
