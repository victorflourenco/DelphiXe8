unit ModConexao;

interface

uses
  System.SysUtils, System.Classes, Data.DBXMySQL, Data.DB, Data.SqlExpr,
  Data.FMTBcd, Datasnap.DBClient, Datasnap.Provider;

type
  TdmDados = class(TDataModule)
    SQLConnection: TSQLConnection;
    sdscaixa: TSQLDataSet;
    dspcaixa: TDataSetProvider;
    cdscaixa: TClientDataSet;
    dspcontas_pagar: TDataSetProvider;
    cdscontas_pagar: TClientDataSet;
    sdscontas_pagar: TSQLDataSet;
    dspcontas_receber: TDataSetProvider;
    cdscontas_receber: TClientDataSet;
    sdscontas_receber: TSQLDataSet;
    dspusuarios: TDataSetProvider;
    cdsUsuarios: TClientDataSet;
    sdsusuarios: TSQLDataSet;
    cdscaixaid: TIntegerField;
    cdscaixanumero_doc: TStringField;
    cdscaixadescricao: TStringField;
    cdscaixavalor: TFMTBCDField;
    cdscaixatipo: TStringField;
    cdscaixadt_cadastro: TDateField;
    cdscontas_pagarid: TIntegerField;
    cdscontas_pagarnumero_doc: TStringField;
    cdscontas_pagardescricao: TStringField;
    cdscontas_pagarparcela: TIntegerField;
    cdscontas_pagarvlr_parcela: TFMTBCDField;
    cdscontas_pagarvlr_compra: TFMTBCDField;
    cdscontas_pagarvlr_abatido: TFMTBCDField;
    cdscontas_pagardt_compra: TDateField;
    cdscontas_pagardt_cadastro: TDateField;
    cdscontas_pagardt_vencimento: TDateField;
    cdscontas_pagardt_pagamento: TDateField;
    cdscontas_pagarstatus: TStringField;
    cdscontas_receberid: TIntegerField;
    cdscontas_receberdocumento: TStringField;
    cdscontas_receberdescricao: TStringField;
    cdscontas_receberparcela: TIntegerField;
    cdscontas_recebervlr_parcela: TFMTBCDField;
    cdscontas_recebervlr_compra: TFMTBCDField;
    cdscontas_recebervlr_abatido: TFMTBCDField;
    cdscontas_receberdt_compra: TDateField;
    cdscontas_receberdt_vencimento: TDateField;
    cdscontas_receberdt_cadastro: TDateField;
    cdscontas_receberstatus: TStringField;
    cdscontas_receberdt_pagamento: TDateField;
    cdsUsuariosid: TIntegerField;
    cdsUsuariosnome: TStringField;
    cdsUsuarioslogin: TStringField;
    cdsUsuariossenha: TStringField;
    cdsUsuariosstatus: TStringField;
    cdsUsuariosdt_cadastro: TDateField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmDados: TdmDados;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UFuncoes, ufrmCadastroUsuarios;

{$R *.dfm}

end.
