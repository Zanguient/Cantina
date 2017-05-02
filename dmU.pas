unit dmU;

interface

uses
  System.SysUtils, System.Classes, ZAbstractConnection, ZConnection, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZAbstractTable, ZDataset;

type
  TdmCantina = class(TDataModule)
    ZConexao: TZConnection;
    ztbCliente: TZTable;
    ztbClientec_id: TLargeintField;
    ztbClientec_nome: TWideStringField;
    ztbClientec_sexo: TWideStringField;
    ztbClientec_email: TWideStringField;
    ztbClientec_senha: TWideStringField;
    ztbClientec_curso: TWideStringField;
    ztbClientec_escola: TWideStringField;
    ztbClientec_ativo: TWideStringField;
    ztbClientec_data_cadastro: TDateTimeField;
    ztbClientec_data_inativo: TDateTimeField;
    ztbFuncionario: TZTable;
    ztbProduto: TZTable;
    ztbVenda: TZTable;
    ztbFuncionariof_id: TLargeintField;
    ztbFuncionariof_nome: TWideStringField;
    ztbFuncionariof_usuario: TWideStringField;
    ztbFuncionariof_senha: TWideStringField;
    ztbFuncionariof_ativo: TWideStringField;
    ztbFuncionariof_data_cadastro: TDateTimeField;
    ztbFuncionariof_data_inativo: TDateTimeField;
    ztbProdutop_id: TLargeintField;
    ztbProdutop_nome: TWideStringField;
    ztbProdutop_foto: TBlobField;
    ztbProdutop_preco: TFloatField;
    ztbProdutop_custo: TFloatField;
    ztbProdutop_quantidade: TLargeintField;
    ztbProdutop_qtd_alerta: TLargeintField;
    ztbProdutop_ativo: TWideStringField;
    ztbProdutop_data_cadastro: TDateTimeField;
    ztbProdutop_data_inativo: TDateTimeField;
    zqrCliente: TZQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmCantina: TdmCantina;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
