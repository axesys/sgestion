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
  object dsFamilias: TDataSource
    DataSet = cdsFamilias
    Left = 24
    Top = 200
  end
  object dspFamilias: TDataSetProvider
    DataSet = qryFamilias
    Left = 24
    Top = 104
  end
  object cdsFamilias: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFamilias'
    Left = 24
    Top = 152
  end
  object qryFamilias: TZQuery
    Connection = cntData
    SQL.Strings = (
      'select * from familias')
    Params = <>
    Left = 24
    Top = 56
  end
  object dsBancos: TDataSource
    DataSet = cdsBancos
    Left = 88
    Top = 200
  end
  object dspBancos: TDataSetProvider
    DataSet = qryBancos
    Left = 88
    Top = 104
  end
  object cdsBancos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspBancos'
    Left = 88
    Top = 152
  end
  object qryBancos: TZQuery
    Connection = cntData
    SQL.Strings = (
      'select * from bancos')
    Params = <>
    Left = 88
    Top = 56
  end
end
