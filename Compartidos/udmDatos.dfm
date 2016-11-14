object dmDatos: TdmDatos
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 444
  Width = 581
  object dsDatos: TDataSource
    DataSet = cdsDatos
    Left = 16
    Top = 152
  end
  object dspDatos: TDataSetProvider
    DataSet = qryDatos
    Left = 16
    Top = 56
  end
  object cdsDatos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDatos'
    Left = 16
    Top = 104
  end
  object qryDatos: TZQuery
    Connection = dmBase.cntData
    Params = <>
    Left = 16
    Top = 8
  end
end
