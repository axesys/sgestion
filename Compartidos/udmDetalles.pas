unit udmDetalles;

interface

uses
  System.SysUtils, System.Classes, udmDatos, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Data.DB, Datasnap.DBClient, Datasnap.Provider;

type
  TdmDetalles = class(TdmDatos)
    dsDetalles: TDataSource;
    cdsDetalles: TClientDataSet;
    qryDetalles: TZQuery;
    dsDetallez: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmDetalles: TdmDetalles;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
