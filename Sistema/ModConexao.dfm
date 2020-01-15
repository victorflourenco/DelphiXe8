object dmDados: TdmDados
  OldCreateOrder = False
  Height = 332
  Width = 560
  object SQLConnection: TSQLConnection
    ConnectionName = 'financeiro'
    DriverName = 'MySQL'
    LoginPrompt = False
    Params.Strings = (
      'GetDriverFunc=getSQLDriverMYSQL'
      'DriverName=MySQL'
      'DriverUnit=Data.DBXMySQL'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver220.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=22.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXMySqlMetaDataCommandFactory,DbxMySQLDr' +
        'iver220.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXMySqlMetaDataCommandFact' +
        'ory,Borland.Data.DbxMySQLDriver,Version=22.0.0.0,Culture=neutral' +
        ',PublicKeyToken=91d62ebb5b0d1b1b'
      'LibraryName=dbxmys.dll'
      'LibraryNameOsx=libsqlmys.dylib'
      'VendorLib=LIBMYSQL.dll'
      'VendorLibWin64=libmysql.dll'
      'VendorLibOsx=libmysqlclient.dylib'
      'Database=financeiro'
      'User_Name=root'
      'Password=123456'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'Compressed=False'
      'Encrypted=False'
      'BlobSize=-1'
      'ErrorResourceFile='
      'HostName=localhost')
    Connected = True
    Left = 24
    Top = 8
  end
  object sdscaixa: TSQLDataSet
    CommandText = 'SELECT * FROM CAIXA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 40
    Top = 80
  end
  object dspcaixa: TDataSetProvider
    DataSet = sdscaixa
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 136
    Top = 80
  end
  object cdscaixa: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspcaixa'
    Left = 224
    Top = 80
    object cdscaixaid: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdscaixanumero_doc: TStringField
      DisplayLabel = 'Numero Doc'
      FieldName = 'numero_doc'
      Required = True
    end
    object cdscaixadescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Size = 200
    end
    object cdscaixavalor: TFMTBCDField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      Required = True
      currency = True
      Precision = 20
      Size = 2
    end
    object cdscaixatipo: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'tipo'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdscaixadt_cadastro: TDateField
      DisplayLabel = 'Data Cadastro'
      FieldName = 'dt_cadastro'
      Required = True
    end
  end
  object dspcontas_pagar: TDataSetProvider
    DataSet = sdscontas_pagar
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 136
    Top = 136
  end
  object cdscontas_pagar: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspcontas_pagar'
    Left = 224
    Top = 136
    object cdscontas_pagarid: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdscontas_pagarnumero_doc: TStringField
      DisplayLabel = 'Numero Doc'
      FieldName = 'numero_doc'
      Required = True
    end
    object cdscontas_pagardescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Size = 200
    end
    object cdscontas_pagarparcela: TIntegerField
      DisplayLabel = 'Parcela'
      FieldName = 'parcela'
      Required = True
    end
    object cdscontas_pagarvlr_parcela: TFMTBCDField
      DisplayLabel = 'Valor Parcela'
      FieldName = 'vlr_parcela'
      Required = True
      Precision = 20
      Size = 2
    end
    object cdscontas_pagarvlr_compra: TFMTBCDField
      DisplayLabel = 'Valor Compra'
      FieldName = 'vlr_compra'
      Required = True
      Precision = 20
      Size = 2
    end
    object cdscontas_pagarvlr_abatido: TFMTBCDField
      DisplayLabel = 'Valor Abatido'
      FieldName = 'vlr_abatido'
      Required = True
      Precision = 20
      Size = 2
    end
    object cdscontas_pagardt_compra: TDateField
      DisplayLabel = 'Data da Compra'
      FieldName = 'dt_compra'
      Required = True
    end
    object cdscontas_pagardt_cadastro: TDateField
      DisplayLabel = 'Data do Cadastro'
      FieldName = 'dt_cadastro'
      Required = True
    end
    object cdscontas_pagardt_vencimento: TDateField
      DisplayLabel = 'Data de Vencimento'
      FieldName = 'dt_vencimento'
      Required = True
    end
    object cdscontas_pagardt_pagamento: TDateField
      DisplayLabel = 'Data Pagamento'
      FieldName = 'dt_pagamento'
    end
    object cdscontas_pagarstatus: TStringField
      DisplayLabel = 'Status'
      FieldName = 'status'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object sdscontas_pagar: TSQLDataSet
    CommandText = 'SELECT * FROM CONTAS_PAGAR'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 40
    Top = 136
  end
  object dspcontas_receber: TDataSetProvider
    DataSet = sdscontas_receber
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 136
    Top = 200
  end
  object cdscontas_receber: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspcontas_receber'
    Left = 224
    Top = 200
    object cdscontas_receberid: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdscontas_receberdocumento: TStringField
      DisplayLabel = 'Documento'
      FieldName = 'documento'
      Required = True
    end
    object cdscontas_receberdescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Size = 200
    end
    object cdscontas_receberparcela: TIntegerField
      DisplayLabel = 'Parcela'
      FieldName = 'parcela'
      Required = True
    end
    object cdscontas_recebervlr_parcela: TFMTBCDField
      DisplayLabel = 'Vlr Parcela'
      FieldName = 'vlr_parcela'
      Required = True
      currency = True
      Precision = 20
      Size = 2
    end
    object cdscontas_recebervlr_compra: TFMTBCDField
      DisplayLabel = 'Vlr Compra'
      FieldName = 'vlr_compra'
      Required = True
      currency = True
      Precision = 20
      Size = 2
    end
    object cdscontas_recebervlr_abatido: TFMTBCDField
      DisplayLabel = 'Vlr Abatido'
      FieldName = 'vlr_abatido'
      Required = True
      currency = True
      Precision = 20
      Size = 2
    end
    object cdscontas_receberdt_compra: TDateField
      DisplayLabel = 'Dada da Compra'
      FieldName = 'dt_compra'
      Required = True
    end
    object cdscontas_receberdt_vencimento: TDateField
      DisplayLabel = 'Data Vencimento'
      FieldName = 'dt_vencimento'
      Required = True
    end
    object cdscontas_receberdt_cadastro: TDateField
      DisplayLabel = 'Data de Cadastro'
      FieldName = 'dt_cadastro'
      Required = True
    end
    object cdscontas_receberstatus: TStringField
      DisplayLabel = 'Status'
      FieldName = 'status'
      Required = True
      FixedChar = True
      Size = 10
    end
    object cdscontas_receberdt_pagamento: TDateField
      DisplayLabel = 'Data Pagamento'
      FieldName = 'dt_pagamento'
    end
  end
  object sdscontas_receber: TSQLDataSet
    CommandText = 'SELECT * FROM CONTAS_RECEBER'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 40
    Top = 200
  end
  object dspusuarios: TDataSetProvider
    DataSet = sdsusuarios
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 136
    Top = 264
  end
  object cdsUsuarios: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspusuarios'
    Left = 224
    Top = 264
    object cdsUsuariosid: TIntegerField
      FieldName = 'Id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsUsuariosnome: TStringField
      FieldName = 'Nome'
      Required = True
      Size = 50
    end
    object cdsUsuarioslogin: TStringField
      FieldName = 'Login'
      Required = True
    end
    object cdsUsuariossenha: TStringField
      FieldName = 'Senha'
      Required = True
    end
    object cdsUsuariosstatus: TStringField
      FieldName = 'status'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsUsuariosdt_cadastro: TDateField
      DisplayLabel = 'Data de Cadastro'
      FieldName = 'dt_cadastro'
    end
  end
  object sdsusuarios: TSQLDataSet
    CommandText = 'SELECT * FROM USUARIOS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 40
    Top = 264
  end
end
