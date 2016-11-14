object dmBase: TdmBase
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 446
  Width = 586
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
  object rptInforme: TVCLReport
    AsyncExecution = False
    Title = 'Sin t'#237'tulo'
    Left = 80
    Top = 8
  end
end
