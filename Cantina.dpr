program Cantina;

uses
  Vcl.Forms,
  UPrincipal in 'UPrincipal.pas' {Form1},
  dmU in 'dmU.pas' {dmCantina: TDataModule},
  modeloListaU in 'modeloListaU.pas' {frmModeloLista},
  clienteListaU in 'clienteListaU.pas' {frmClienteLista},
  modeloDadosU in 'modeloDadosU.pas' {frmModeloDados},
  ClienteDadosU in 'ClienteDadosU.pas' {frmClienteDados},
  produtoListaU in 'produtoListaU.pas' {frmProdutoLista},
  ProdutoDadosU in 'ProdutoDadosU.pas' {ProdutDadosU},
  ContaDadosU in 'ContaDadosU.pas' {frmIdentificaConta};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TdmCantina, dmCantina);
  Application.Run;
end.
