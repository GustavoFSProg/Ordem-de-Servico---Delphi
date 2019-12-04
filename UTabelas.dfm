object DM: TDM
  OldCreateOrder = False
  Height = 820
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
    Top = 384
  end
  object SQLSERVICOS: TSQLDataSet
    SchemaName = 'sysdba'
    Active = True
    CommandText = 'select *  from SERVICOS'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 72
    Top = 448
    object SQLSERVICOSID_SERVISOS: TIntegerField
      FieldName = 'ID_SERVISOS'
    end
    object SQLSERVICOSDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 150
    end
    object SQLSERVICOSVALOR: TSingleField
      FieldName = 'VALOR'
    end
    object SQLSERVICOSPROFISSIONAL: TStringField
      FieldName = 'PROFISSIONAL'
      Size = 80
    end
    object SQLSERVICOSCOMISSAO: TStringField
      FieldName = 'COMISSAO'
      Size = 10
    end
    object SQLSERVICOSID_OS: TIntegerField
      FieldName = 'ID_OS'
    end
  end
  object DataSetSERVICOS: TDataSetProvider
    DataSet = SQLSERVICOS
    Left = 184
    Top = 448
  end
  object ClientSERVICOS: TClientDataSet
    Active = True
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DataSetSERVICOS'
    Left = 296
    Top = 448
    object ClientSERVICOSID_SERVIÇOS: TIntegerField
      DisplayLabel = 'ID_SERVI'#199'OS'
      FieldName = 'ID_SERVISOS'
    end
    object ClientSERVICOSDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 150
    end
    object ClientSERVICOSVALOR: TSingleField
      FieldName = 'VALOR'
    end
    object ClientSERVICOSPROFISSIONAL: TStringField
      FieldName = 'PROFISSIONAL'
      Size = 80
    end
    object ClientSERVICOSCOMISSAO: TStringField
      FieldName = 'COMISSAO'
      Size = 10
    end
    object ClientSERVICOSID_OS: TIntegerField
      FieldName = 'ID_OS'
    end
  end
  object DSSERVICOS: TDataSource
    DataSet = ClientSERVICOS
    Left = 400
    Top = 448
  end
  object SQLPRODUTOS: TSQLDataSet
    SchemaName = 'sysdba'
    Active = True
    CommandText = 'select *  from PRODUTOS'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 72
    Top = 520
    object SQLPRODUTOSID_PRODUTOS: TIntegerField
      FieldName = 'ID_PRODUTOS'
    end
    object SQLPRODUTOSDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object SQLPRODUTOSVALOR: TSingleField
      FieldName = 'VALOR'
    end
    object SQLPRODUTOSQTD: TIntegerField
      FieldName = 'QTD'
    end
    object SQLPRODUTOSTOTAL: TIntegerField
      FieldName = 'TOTAL'
    end
    object SQLPRODUTOSMARCA: TStringField
      FieldName = 'MARCA'
      Size = 70
    end
    object SQLPRODUTOSID_OS: TIntegerField
      FieldName = 'ID_OS'
    end
  end
  object DataSetPRODUTOS: TDataSetProvider
    DataSet = SQLPRODUTOS
    Left = 184
    Top = 520
  end
  object ClientPRODUTOS: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetPRODUTOS'
    Left = 296
    Top = 520
    object ClientPRODUTOSID_PRODUTOS: TIntegerField
      FieldName = 'ID_PRODUTOS'
    end
    object ClientPRODUTOSDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object ClientPRODUTOSVALOR: TSingleField
      FieldName = 'VALOR'
    end
    object ClientPRODUTOSQTD: TIntegerField
      FieldName = 'QTD'
    end
    object ClientPRODUTOSTOTAL: TIntegerField
      FieldName = 'TOTAL'
    end
    object ClientPRODUTOSMARCA: TStringField
      FieldName = 'MARCA'
      Size = 70
    end
    object ClientPRODUTOSID_OS: TIntegerField
      FieldName = 'ID_OS'
    end
  end
  object DSPRODUTOS: TDataSource
    DataSet = ClientPRODUTOS
    Left = 400
    Top = 520
  end
  object SQLOBS: TSQLDataSet
    SchemaName = 'sysdba'
    Active = True
    CommandText = 'select  *  from OBSERVACOES'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 80
    Top = 592
    object SQLOBSID_OBS: TIntegerField
      FieldName = 'ID_OBS'
    end
    object SQLOBSOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 500
    end
    object SQLOBSID_OS: TIntegerField
      FieldName = 'ID_OS'
    end
  end
  object DataSetOBS: TDataSetProvider
    DataSet = SQLOBS
    Left = 184
    Top = 592
  end
  object ClientOBS: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetOBS'
    Left = 296
    Top = 592
    object ClientOBSID_OBS: TIntegerField
      FieldName = 'ID_OBS'
    end
    object ClientOBSOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 500
    end
    object ClientOBSID_OS: TIntegerField
      FieldName = 'ID_OS'
    end
  end
  object DSOBS: TDataSource
    DataSet = ClientOBS
    Left = 400
    Top = 592
  end
  object SQLPAGAMENTO: TSQLDataSet
    SchemaName = 'sysdba'
    Active = True
    CommandText = 'select  * from PAGAMENTOS'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 80
    Top = 680
    object SQLPAGAMENTOID_PAGAMENTOS: TIntegerField
      FieldName = 'ID_PAGAMENTOS'
    end
    object SQLPAGAMENTOVALOR: TSingleField
      FieldName = 'VALOR'
    end
    object SQLPAGAMENTOTAXA: TIntegerField
      FieldName = 'TAXA'
    end
    object SQLPAGAMENTOVALOR_FINAL: TSingleField
      FieldName = 'VALOR_FINAL'
    end
    object SQLPAGAMENTOFORMA_PAGAMENTO: TStringField
      FieldName = 'FORMA_PAGAMENTO'
      Size = 50
    end
    object SQLPAGAMENTOID_OS: TIntegerField
      FieldName = 'ID_OS'
    end
    object SQLPAGAMENTOVENCIMENTOS: TDateField
      FieldName = 'VENCIMENTOS'
      EditMask = '!99/99/00;1;_'
    end
    object SQLPAGAMENTOPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 50
    end
  end
  object DataSetPAGTO: TDataSetProvider
    DataSet = SQLPAGAMENTO
    Left = 192
    Top = 680
  end
  object ClientPAGAMENTO: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetPAGTO'
    Left = 296
    Top = 680
    object ClientPAGAMENTOID_PAGAMENTOS: TIntegerField
      FieldName = 'ID_PAGAMENTOS'
    end
    object ClientPAGAMENTOVALOR: TSingleField
      FieldName = 'VALOR'
    end
    object ClientPAGAMENTOTAXA: TIntegerField
      FieldName = 'TAXA'
    end
    object ClientPAGAMENTOVALOR_FINAL: TSingleField
      FieldName = 'VALOR_FINAL'
    end
    object ClientPAGAMENTOFORMA_PAGAMENTO: TStringField
      FieldName = 'FORMA_PAGAMENTO'
      Size = 50
    end
    object ClientPAGAMENTOID_OS: TIntegerField
      FieldName = 'ID_OS'
    end
    object ClientPAGAMENTOVENCIMENTOS: TDateField
      FieldName = 'VENCIMENTOS'
      EditMask = '!99/99/00;1;_'
    end
    object ClientPAGAMENTOPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 50
    end
  end
  object DSPAGTO: TDataSource
    DataSet = ClientPAGAMENTO
    Left = 408
    Top = 680
  end
end
