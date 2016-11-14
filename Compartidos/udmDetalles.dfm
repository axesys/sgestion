inherited dmDetalles: TdmDetalles
  OldCreateOrder = True
  object dsDetalles: TDataSource
    DataSet = cdsDetalles
    Left = 72
    Top = 152
  end
  object cdsDetalles: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 72
    Top = 104
  end
  object qryDetalles: TZQuery
    Connection = dmBase.cntData
    Params = <>
    DataSource = dsDetallez
    Left = 72
    Top = 56
  end
  object dsDetallez: TDataSource
    DataSet = qryDatos
    Left = 72
    Top = 8
  end
end
