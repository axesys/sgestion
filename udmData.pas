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
    qryPresupuestos: TZQuery;
    dsPresupuestos_Datos: TDataSource;
    cdsPresupuestos_Datos: TClientDataSet;
    qryPresupuestos_Datos: TZQuery;
    dsPresupuestosDatos: TDataSource;
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
    dsProductos: TDataSource;
    dspProductos: TDataSetProvider;
    cdsProductos: TClientDataSet;
    qryProductos: TZQuery;
    cdsProductosID_PRODUCTOS: TWideStringField;
    cdsProductosNOMBRE: TWideStringField;
    cdsProductosID_FAMILIA: TWideStringField;
    cdsProductosIVA: TFloatField;
    cdsProductosPRECIO_COMPRA: TFloatField;
    cdsProductosDESCUENTO: TFloatField;
    cdsProductosPRECIO1: TFloatField;
    cdsProductosPRECIO2: TFloatField;
    cdsProductosPRECIO3: TFloatField;
    cdsProductosSINSTOCK: TFloatField;
    cdsProductosSTOCK: TFloatField;
    cdsProductosSTOCK_MINIMO: TFloatField;
    cdsProductosIVA_INCLUIDO: TFloatField;
    cdsProductosKIT: TFloatField;
    cdsProductosCOMISION: TFloatField;
    cdsProductosOBSERVACIONES: TWideMemoField;
    cdsProductosPVP1: TFloatField;
    cdsProductosPVP2: TFloatField;
    cdsProductosPVP3: TFloatField;
    cdsProductosID_USUARIO: TWideStringField;
    cdsPresupuestos_DatosID_PRESUPUESTOS_DATOS: TWideStringField;
    cdsPresupuestos_DatosID_PRESUPUESTOS: TWideStringField;
    cdsPresupuestos_DatosID_PRODUCTOS: TWideStringField;
    cdsPresupuestos_DatosCANTIDAD: TFloatField;
    cdsPresupuestos_DatosDESCRIPCION: TWideStringField;
    cdsPresupuestos_DatosPRECIO: TFloatField;
    cdsPresupuestos_DatosDESCUENTO: TFloatField;
    cdsPresupuestos_DatosIVA: TFloatField;
    cdsPresupuestos_DatosPOSICION: TFloatField;
    cdsPresupuestos_DatosLOTE: TWideStringField;
    cdsPresupuestos_DatosIMPORTE: TFloatField;
    cdsPresupuestos_DatosPRODUCTOS: TStringField;
    cdsPresupuestos_DatosSUBTOTAL: TFloatField;
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsNewRecord(DataSet: TDataSet);
    procedure cdsAfterPost(DataSet: TDataSet);
    procedure cdsPresupuestos_DatosCalcFields(DataSet: TDataSet);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
    Reportes: string;
    function GetId: string;
  public
    { Public declarations }
    procedure MostrarReporte(sName: String);
  end;

var
  dmData: TdmData;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

uses
  Vcl.Dialogs, System.IniFiles;

procedure TdmData.MostrarReporte(sName: String);
var
  dtsData: TDataSet;
begin
  dtsData:= FindComponent('cds' + sName) as TDataSet;
//  with rptInforme do
//  begin
//    Filename:= Reportes + sName + '.rep';
//    Report.Params.ParamByName('ID_' + sName).Value:=
//      dtsData.FieldByName('ID_' + sName).Value;
//    Execute;
//  end;
end;

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
  dtsDetail:= FindComponent(sName) as TDataSet;
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

procedure TdmData.cdsPresupuestos_DatosCalcFields(DataSet: TDataSet);
begin
  cdsPresupuestos_DatosSUBTOTAL.Value:= cdsPresupuestos_DatosPRECIO.Value *
    cdsPresupuestos_DatosCANTIDAD.Value;
end;

procedure TdmData.DataModuleCreate(Sender: TObject);
var
  DataSet: TDataSet;
  i: Integer;
begin
  with TMemIniFile.Create(ChangeFileExt(ParamStr(0),'.ini')) do
  try
    cntData.Protocol:= ReadString('Conection', 'Protocol', 'firebird-3.0');
    cntData.HostName:= ReadString('Conection', 'HostName', '127.0.0.1');
    cntData.Database:= ReadString('Conection', 'Database', 'C:\AppData\SGESTION.FDB');
    cntData.User:= ReadString('Conection', 'User', 'sysdba');
    cntData.Password:= ReadString('Conection', 'Password', 'masterkey');
    Reportes:= ReadString('Reports', 'Path', 'C:\Reportes\')
  finally
    Free;
  end;
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

procedure TdmData.DataModuleDestroy(Sender: TObject);
begin
  with TMemIniFile.Create(ChangeFileExt(ParamStr(0),'.ini')) do
  try
    WriteString('Conection', 'Protocol', cntData.Protocol);
    WriteString('Conection', 'HostName', cntData.HostName);
    WriteString('Conection', 'Database', cntData.Database);
    WriteString('Conection', 'User', cntData.User);
    WriteString('Conection', 'Password', cntData.Password);
    WriteString('Reports', 'Path', Reportes);
    UpdateFile;
  finally
    Free;
  end;
end;

end.
