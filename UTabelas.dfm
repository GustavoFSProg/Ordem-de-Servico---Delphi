object DM: TDM
  OldCreateOrder = False
  Height = 511
  Width = 596
  object SQLConnection1: TSQLConnection
    ConnectionName = 'FBConnection'
    DriverName = 'Firebird'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbxfb.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Firebird'
      'Database=c:\OrdemServico\os.fdb'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=3'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'IsolationLevel=ReadCommitted'
      'Trim Char=False')
    VendorLib = 'fbclient.dll'
    Connected = True
    Left = 72
    Top = 48
  end
  object SQLClientes: TSQLDataSet
    SchemaName = 'sysdba'
    Active = True
    CommandText = 'select * from CLIENTES'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 72
    Top = 144
    object SQLClientesID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object SQLClientesNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object SQLClientesTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 15
    end
    object SQLClientesOS_NUMERO: TLargeintField
      FieldName = 'OS_NUMERO'
    end
    object SQLClientesCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 15
    end
    object SQLClientesEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 60
    end
  end
  object DataSetClientes: TDataSetProvider
    DataSet = SQLClientes
    Left = 176
    Top = 144
  end
  object ClientClientes: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetClientes'
    Left = 288
    Top = 144
    object ClientClientesID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object ClientClientesNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object ClientClientesTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 15
    end
    object ClientClientesOS_NUMERO: TLargeintField
      FieldName = 'OS_NUMERO'
    end
    object ClientClientesCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 15
    end
    object ClientClientesEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 60
    end
  end
  object DSClientes: TDataSource
    DataSet = ClientClientes
    Left = 392
    Top = 144
  end
  object SQLOS: TSQLDataSet
    SchemaName = 'sysdba'
    Active = True
    CommandText = 'select *  from OS'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 72
    Top = 232
    object SQLOSID_ORDEM: TIntegerField
      FieldName = 'ID_ORDEM'
    end
    object SQLOSDATA_ENTRADA: TDateField
      FieldName = 'DATA_ ENTRADA'
    end
    object SQLOSPREVISAO_ENTREGA: TDateField
      FieldName = 'PREVISAO_ENTREGA'
    end
    object SQLOSDATA_FINALIZACAO: TDateField
      FieldName = 'DATA_FINALIZACAO'
    end
    object SQLOSCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 50
    end
    object SQLOSVEICULOS: TStringField
      FieldName = 'VEICULOS'
      Size = 100
    end
  end
  object DataSetOS: TDataSetProvider
    DataSet = SQLOS
    Left = 176
    Top = 232
  end
  object ClientOS: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetOS'
    Left = 288
    Top = 232
    object ClientOSID_ORDEM: TIntegerField
      FieldName = 'ID_ORDEM'
    end
    object ClientOSDATA_ENTRADA: TDateField
      FieldName = 'DATA_ ENTRADA'
    end
    object ClientOSPREVISAO_ENTREGA: TDateField
      FieldName = 'PREVISAO_ENTREGA'
    end
    object ClientOSDATA_FINALIZACAO: TDateField
      FieldName = 'DATA_FINALIZACAO'
    end
    object ClientOSCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 50
    end
    object ClientOSVEICULOS: TStringField
      FieldName = 'VEICULOS'
      Size = 100
    end
  end
  object DSOS: TDataSource
    DataSet = ClientOS
    Left = 384
    Top = 232
  end
  object SQLVEICULOS: TSQLDataSet
    SchemaName = 'sysdba'
    Active = True
    CommandText = 'select  * from VEICULOS'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 72
    Top = 312
    object SQLVEICULOSID_VEICULO: TIntegerField
      FieldName = 'ID_VEICULO'
    end
    object SQLVEICULOSDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 80
    end
    object SQLVEICULOSKM: TStringField
      FieldName = 'KM'
    end
    object SQLVEICULOSID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object SQLVEICULOSID_OS: TIntegerField
      FieldName = 'ID_OS'
    end
  end
  object DataSetVEICULOS: TDataSetProvider
    DataSet = SQLVEICULOS
    Left = 176
    Top = 312
  end
  object ClientVEICULOS: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetVEICULOS'
    Left = 296
    Top = 312
    object ClientVEICULOSID_VEICULO: TIntegerField
      FieldName = 'ID_VEICULO'
    end
    object ClientVEICULOSDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 80
    end
    object ClientVEICULOSKM: TStringField
      FieldName = 'KM'
    end
    object ClientVEICULOSID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object ClientVEICULOSID_OS: TIntegerField
      FieldName = 'ID_OS'
    end
  end
  object DSVEICULOS: TDataSource
    DataSet = ClientVEICULOS
    Left = 408
    Top = 312
  end
  object SQLPROBLEMA: TSQLDataSet
    SchemaName = 'sysdba'
    Active = True
    CommandText = 'select *  from PROBLEMA'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 72
    Top = 384
    object SQLPROBLEMAID_PROBLEMA: TIntegerField
      FieldName = 'ID_PROBLEMA'
    end
    object SQLPROBLEMADESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 700
    end
    object SQLPROBLEMAID_OS: TIntegerField
      FieldName = 'ID_OS'
    end
  end
  object DataSetPROBLEMA: TDataSetProvider
    DataSet = SQLPROBLEMA
    Left = 184
    Top = 384
  end
  object ClientPROBLEMA: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetPROBLEMA'
    Left = 296
    Top = 384
    object ClientPROBLEMAID_PROBLEMA: TIntegerField
      FieldName = 'ID_PROBLEMA'
    end
    object ClientPROBLEMADESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 700
    end
    object ClientPROBLEMAID_OS: TIntegerField
      FieldName = 'ID_OS'
    end
  end
  object DSPROB: TDataSource
    DataSet = ClientPROBLEMA
    Left = 400
    Top = 376
  end
end
