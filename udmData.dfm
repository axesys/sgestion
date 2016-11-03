object dmData: TdmData
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 386
  Width = 518
  object cntData: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    Connected = True
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
  object dsPresupuestos: TDataSource
    DataSet = cdsPresupuestos
    Left = 160
    Top = 200
  end
  object dspPresupuestos: TDataSetProvider
    DataSet = qryPresupuestos
    ResolveToDataSet = True
    Options = [poFetchDetailsOnDemand, poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poUseQuoteChar]
    Left = 160
    Top = 104
  end
  object cdsPresupuestos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPresupuestos'
    Left = 160
    Top = 152
    object cdsPresupuestosID_PRESUPUESTOS: TWideStringField
      FieldName = 'ID_PRESUPUESTOS'
      Required = True
      Size = 38
    end
    object cdsPresupuestosFECHA: TDateTimeField
      FieldName = 'FECHA'
    end
    object cdsPresupuestosID_CLIENTES: TWideStringField
      FieldName = 'ID_CLIENTES'
      Size = 38
    end
    object cdsPresupuestosNOMBRE: TWideStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
    object cdsPresupuestosDIRECCION: TWideStringField
      FieldName = 'DIRECCION'
      Size = 100
    end
    object cdsPresupuestosCODIGO_POSTAL: TWideStringField
      FieldName = 'CODIGO_POSTAL'
      Size = 10
    end
    object cdsPresupuestosCIUDAD: TWideStringField
      FieldName = 'CIUDAD'
      Size = 100
    end
    object cdsPresupuestosPROVINCIA: TWideStringField
      FieldName = 'PROVINCIA'
      Size = 60
    end
    object cdsPresupuestosNIF: TWideStringField
      FieldName = 'NIF'
      Size = 18
    end
    object cdsPresupuestosCONRE: TFloatField
      FieldName = 'CONRE'
      Required = True
    end
    object cdsPresupuestosCONIRPF: TFloatField
      FieldName = 'CONIRPF'
      Required = True
    end
    object cdsPresupuestosSINIVA: TFloatField
      FieldName = 'SINIVA'
      Required = True
    end
    object cdsPresupuestosPAGADO: TFloatField
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
      FieldName = 'ID_FORMAS_PAGO'
      Size = 38
    end
    object cdsPresupuestosNUMERO_CUENTA: TWideStringField
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
      FieldName = 'TRASPASADO'
      Required = True
    end
    object cdsPresupuestosTARIFA: TIntegerField
      FieldName = 'TARIFA'
    end
    object cdsPresupuestosID_COMERCIALES: TWideStringField
      FieldName = 'ID_COMERCIALES'
      Size = 38
    end
    object cdsPresupuestosCOMISION: TFloatField
      FieldName = 'COMISION'
    end
    object cdsPresupuestosBIC: TWideStringField
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
      FieldName = 'ID_USUARIO'
      Size = 38
    end
    object cdsPresupuestosqryPresupuestos_Datos: TDataSetField
      FieldName = 'qryPresupuestos_Datos'
    end
  end
  object dsPresupuestosDatos: TDataSource
    DataSet = qryPresupuestos
    Left = 264
    Top = 56
  end
  object cdsPresupuestos_Datos: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPresupuestosqryPresupuestos_Datos
    Params = <>
    Left = 264
    Top = 152
  end
  object dsPresupuestos_Datos: TDataSource
    DataSet = cdsPresupuestos_Datos
    Left = 264
    Top = 200
  end
  object qryPresupuestos: TZQuery
    Connection = cntData
    SQL.Strings = (
      'select * from presupuestos')
    Params = <>
    Left = 160
    Top = 56
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
    Left = 264
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_presupuestos'
        ParamType = ptUnknown
      end>
  end
end
