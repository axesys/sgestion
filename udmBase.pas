unit udmBase;

interface

uses
  System.SysUtils, System.Classes, ZAbstractConnection, ZConnection, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Datasnap.Provider,
  Datasnap.DBClient, ZSqlUpdate, rpcompobase, rpvclreport;

type
  TdmBase = class(TDataModule)
    cntData: TZConnection;
    rptInforme: TVCLReport;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
    Reportes: string;
  public
    { Public declarations }
    procedure MostrarReporte(sName: String);
  end;

var
  dmBase: TdmBase;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

uses
  Vcl.Dialogs, System.IniFiles;

procedure TdmBase.MostrarReporte(sName: String);
var
  dtsData: TDataSet;
begin
  dtsData:= FindComponent('cds' + sName) as TDataSet;
  with rptInforme do
  begin
    Filename:= Reportes + sName + '.rep';
    Report.Params.ParamByName('ID_' + sName).Value:=
      dtsData.FieldByName('ID_' + sName).Value;
    Execute;
  end;
end;

procedure TdmBase.DataModuleCreate(Sender: TObject);
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
end;

procedure TdmBase.DataModuleDestroy(Sender: TObject);
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
