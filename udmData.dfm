object dmData: TdmData
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
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
    Protocol = 'firebird-3.0'
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
  object dsPresupuestos: TDataSource
    DataSet = cdsPresupuestos
    Left = 232
    Top = 200
  end
  object dspPresupuestos: TDataSetProvider
    DataSet = qryPresupuestos
    ResolveToDataSet = True
    Options = [poFetchDetailsOnDemand, poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poUseQuoteChar]
    Left = 232
    Top = 104
  end
  object cdsPresupuestos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPresupuestos'
    Left = 232
    Top = 152
    object cdsPresupuestosID_PRESUPUESTOS: TWideStringField
      DisplayWidth = 38
      FieldName = 'ID_PRESUPUESTOS'
      Required = True
      Size = 38
    end
    object cdsPresupuestosFECHA: TDateTimeField
      FieldName = 'FECHA'
    end
    object cdsPresupuestosID_CLIENTES: TWideStringField
      DisplayWidth = 38
      FieldName = 'ID_CLIENTES'
      Size = 38
    end
    object cdsPresupuestosNOMBRE: TWideStringField
      DisplayWidth = 50
      FieldName = 'NOMBRE'
      Size = 50
    end
    object cdsPresupuestosDIRECCION: TWideStringField
      DisplayWidth = 100
      FieldName = 'DIRECCION'
      Size = 100
    end
    object cdsPresupuestosCODIGO_POSTAL: TWideStringField
      DisplayWidth = 10
      FieldName = 'CODIGO_POSTAL'
      Size = 10
    end
    object cdsPresupuestosCIUDAD: TWideStringField
      DisplayWidth = 100
      FieldName = 'CIUDAD'
      Size = 100
    end
    object cdsPresupuestosPROVINCIA: TWideStringField
      DisplayWidth = 60
      FieldName = 'PROVINCIA'
      Size = 60
    end
    object cdsPresupuestosNIF: TWideStringField
      DisplayWidth = 18
      FieldName = 'NIF'
      Size = 18
    end
    object cdsPresupuestosCONRE: TFloatField
      DefaultExpression = '0'
      FieldName = 'CONRE'
      Required = True
    end
    object cdsPresupuestosCONIRPF: TFloatField
      DefaultExpression = '0'
      FieldName = 'CONIRPF'
      Required = True
    end
    object cdsPresupuestosSINIVA: TFloatField
      DefaultExpression = '0'
      FieldName = 'SINIVA'
      Required = True
    end
    object cdsPresupuestosPAGADO: TFloatField
      DefaultExpression = '0'
      FieldName = 'PAGADO'
      Required = True
    end
    object cdsPresupuestosDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
    end
    object cdsPresupuestosIRPF: TFloatField
      FieldName = 'IRPF'
    end
    object cdsPresupuestosBASE_IMPONIBLE1: TFloatField
      FieldName = 'BASE_IMPONIBLE1'
    end
    object cdsPresupuestosIVA1: TFloatField
      FieldName = 'IVA1'
    end
    object cdsPresupuestosRE1: TFloatField
      FieldName = 'RE1'
    end
    object cdsPresupuestosBASE_IMPONIBLE2: TFloatField
      FieldName = 'BASE_IMPONIBLE2'
    end
    object cdsPresupuestosIVA2: TFloatField
      FieldName = 'IVA2'
    end
    object cdsPresupuestosRE2: TFloatField
      FieldName = 'RE2'
    end
    object cdsPresupuestosBASE_IMPONIBLE3: TFloatField
      FieldName = 'BASE_IMPONIBLE3'
    end
    object cdsPresupuestosIVA3: TFloatField
      FieldName = 'IVA3'
    end
    object cdsPresupuestosRE3: TFloatField
      FieldName = 'RE3'
    end
    object cdsPresupuestosID_FORMAS_PAGO: TWideStringField
      DisplayWidth = 38
      FieldName = 'ID_FORMAS_PAGO'
      Size = 38
    end
    object cdsPresupuestosNUMERO_CUENTA: TWideStringField
      DisplayWidth = 50
      FieldName = 'NUMERO_CUENTA'
      Size = 50
    end
    object cdsPresupuestosTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object cdsPresupuestosOBSERVACIONES: TWideMemoField
      FieldName = 'OBSERVACIONES'
      BlobType = ftWideMemo
    end
    object cdsPresupuestosTRASPASADO: TFloatField
      DefaultExpression = '0'
      FieldName = 'TRASPASADO'
      Required = True
    end
    object cdsPresupuestosTARIFA: TIntegerField
      FieldName = 'TARIFA'
    end
    object cdsPresupuestosID_COMERCIALES: TWideStringField
      DisplayWidth = 38
      FieldName = 'ID_COMERCIALES'
      Size = 38
    end
    object cdsPresupuestosCOMISION: TFloatField
      FieldName = 'COMISION'
    end
    object cdsPresupuestosBIC: TWideStringField
      DisplayWidth = 11
      FieldName = 'BIC'
      Size = 11
    end
    object cdsPresupuestosTOTAL_IVA1: TFloatField
      FieldName = 'TOTAL_IVA1'
    end
    object cdsPresupuestosTOTAL_IVA2: TFloatField
      FieldName = 'TOTAL_IVA2'
    end
    object cdsPresupuestosTOTAL_IVA3: TFloatField
      FieldName = 'TOTAL_IVA3'
    end
    object cdsPresupuestosTOTAL_RE1: TFloatField
      FieldName = 'TOTAL_RE1'
    end
    object cdsPresupuestosTOTAL_RE2: TFloatField
      FieldName = 'TOTAL_RE2'
    end
    object cdsPresupuestosTOTAL_RE3: TFloatField
      FieldName = 'TOTAL_RE3'
    end
    object cdsPresupuestosTOTAL_IRPF: TFloatField
      FieldName = 'TOTAL_IRPF'
    end
    object cdsPresupuestosTOTAL_DESCUENTO: TFloatField
      FieldName = 'TOTAL_DESCUENTO'
    end
    object cdsPresupuestosTOTAL_PENDIENTE: TFloatField
      FieldName = 'TOTAL_PENDIENTE'
    end
    object cdsPresupuestosID_USUARIO: TWideStringField
      DisplayWidth = 38
      FieldName = 'ID_USUARIO'
      Size = 38
    end
    object cdsPresupuestosqryPresupuestos_Datos: TDataSetField
      FieldName = 'qryPresupuestos_Datos'
    end
  end
  object qryPresupuestos: TZQuery
    Connection = cntData
    SQL.Strings = (
      'select * from presupuestos')
    Params = <>
    Left = 232
    Top = 56
  end
  object dsPresupuestos_Datos: TDataSource
    DataSet = cdsPresupuestos_Datos
    Left = 336
    Top = 200
  end
  object cdsPresupuestos_Datos: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPresupuestosqryPresupuestos_Datos
    Params = <>
    OnCalcFields = cdsPresupuestos_DatosCalcFields
    Left = 336
    Top = 152
    object cdsPresupuestos_DatosID_PRESUPUESTOS_DATOS: TWideStringField
      DisplayWidth = 38
      FieldName = 'ID_PRESUPUESTOS_DATOS'
      Required = True
      Size = 38
    end
    object cdsPresupuestos_DatosID_PRESUPUESTOS: TWideStringField
      DisplayWidth = 38
      FieldName = 'ID_PRESUPUESTOS'
      Required = True
      Size = 38
    end
    object cdsPresupuestos_DatosID_PRODUCTOS: TWideStringField
      DisplayWidth = 38
      FieldName = 'ID_PRODUCTOS'
      Size = 38
    end
    object cdsPresupuestos_DatosCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
    end
    object cdsPresupuestos_DatosDESCRIPCION: TWideStringField
      DisplayWidth = 255
      FieldName = 'DESCRIPCION'
      Size = 255
    end
    object cdsPresupuestos_DatosPRECIO: TFloatField
      FieldName = 'PRECIO'
    end
    object cdsPresupuestos_DatosDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
    end
    object cdsPresupuestos_DatosIVA: TFloatField
      FieldName = 'IVA'
    end
    object cdsPresupuestos_DatosPOSICION: TFloatField
      FieldName = 'POSICION'
    end
    object cdsPresupuestos_DatosLOTE: TWideStringField
      DisplayWidth = 50
      FieldName = 'LOTE'
      Size = 50
    end
    object cdsPresupuestos_DatosIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object cdsPresupuestos_DatosPRODUCTOS: TStringField
      FieldKind = fkLookup
      FieldName = 'PRODUCTOS'
      LookupDataSet = cdsProductos
      LookupKeyFields = 'ID_PRODUCTOS'
      LookupResultField = 'NOMBRE'
      KeyFields = 'ID_PRODUCTOS'
      Lookup = True
    end
    object cdsPresupuestos_DatosSUBTOTAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SUBTOTAL'
      Calculated = True
    end
  end
  object qryPresupuestos_Datos: TZQuery
    Connection = cntData
    SQL.Strings = (
      
        'select * from presupuestos_datos where id_presupuestos = :id_pre' +
        'supuestos')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id_presupuestos'
        ParamType = ptUnknown
      end>
    DataSource = dsPresupuestosDatos
    Left = 336
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_presupuestos'
        ParamType = ptUnknown
      end>
  end
  object dsPresupuestosDatos: TDataSource
    DataSet = qryPresupuestos
    Left = 336
    Top = 56
  end
  object dsProductos: TDataSource
    DataSet = cdsProductos
    Left = 152
    Top = 200
  end
  object dspProductos: TDataSetProvider
    DataSet = qryProductos
    Left = 152
    Top = 104
  end
  object cdsProductos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProductos'
    Left = 152
    Top = 152
    object cdsProductosID_PRODUCTOS: TWideStringField
      FieldName = 'ID_PRODUCTOS'
      Required = True
      Size = 38
    end
    object cdsProductosNOMBRE: TWideStringField
      FieldName = 'NOMBRE'
      Size = 255
    end
    object cdsProductosID_FAMILIA: TWideStringField
      FieldName = 'ID_FAMILIA'
      Size = 38
    end
    object cdsProductosIVA: TFloatField
      FieldName = 'IVA'
    end
    object cdsProductosPRECIO_COMPRA: TFloatField
      FieldName = 'PRECIO_COMPRA'
    end
    object cdsProductosDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
    end
    object cdsProductosPRECIO1: TFloatField
      FieldName = 'PRECIO1'
    end
    object cdsProductosPRECIO2: TFloatField
      FieldName = 'PRECIO2'
    end
    object cdsProductosPRECIO3: TFloatField
      FieldName = 'PRECIO3'
    end
    object cdsProductosSINSTOCK: TFloatField
      DefaultExpression = '0'
      FieldName = 'SINSTOCK'
      Required = True
    end
    object cdsProductosSTOCK: TFloatField
      FieldName = 'STOCK'
    end
    object cdsProductosSTOCK_MINIMO: TFloatField
      FieldName = 'STOCK_MINIMO'
    end
    object cdsProductosIVA_INCLUIDO: TFloatField
      DefaultExpression = '0'
      FieldName = 'IVA_INCLUIDO'
      Required = True
    end
    object cdsProductosKIT: TFloatField
      DefaultExpression = '0'
      FieldName = 'KIT'
      Required = True
    end
    object cdsProductosCOMISION: TFloatField
      FieldName = 'COMISION'
    end
    object cdsProductosOBSERVACIONES: TWideMemoField
      FieldName = 'OBSERVACIONES'
      BlobType = ftWideMemo
    end
    object cdsProductosPVP1: TFloatField
      FieldName = 'PVP1'
    end
    object cdsProductosPVP2: TFloatField
      FieldName = 'PVP2'
    end
    object cdsProductosPVP3: TFloatField
      FieldName = 'PVP3'
    end
    object cdsProductosID_USUARIO: TWideStringField
      FieldName = 'ID_USUARIO'
      Size = 38
    end
  end
  object qryProductos: TZQuery
    Connection = cntData
    SQL.Strings = (
      'select * from productos')
    Params = <>
    Left = 152
    Top = 56
  end
end
