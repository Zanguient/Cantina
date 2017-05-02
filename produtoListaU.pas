unit produtoListaU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, modeloListaU, Data.DB, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmProdutoLista = class(TfrmModeloLista)
    procedure btnEditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProdutoLista: TfrmProdutoLista;

implementation

{$R *.dfm}

uses dmU, UPrincipal, ProdutoDadosU;

procedure TfrmProdutoLista.btnEditarClick(Sender: TObject);
begin
  inherited;
  Form1.abreForm(TProdutDadosU);
end;

end.
