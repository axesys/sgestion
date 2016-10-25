object dmData: TdmData
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 386
  Width = 518
  object cntData: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    HostName = 'localhost'
    Port = 0
    Database = 'C:\AppData\SGESTION.FDB'
    User = 'sysdba'
    Password = 'masterkey'
    Protocol = 'firebird-2.5'
    Left = 24
    Top = 8
  end
  object qryClientes: TZQuery
    Connection = cntData
    SQL.Strings = (
      'select * from clientes')
    Params = <>
    Left = 24
    Top = 56
  end
  object cdsClientes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspClientes'
    AfterPost = cdsAfterPost
    AfterDelete = cdsAfterPost
    OnNewRecord = cdsClientesNewRecord
    Left = 24
    Top = 152
  end
  object dspClientes: TDataSetProvider
    DataSet = qryClientes
    Left = 24
    Top = 104
  end
  object dsClientes: TDataSource
    DataSet = cdsClientes
    Left = 24
    Top = 200
  end
end
