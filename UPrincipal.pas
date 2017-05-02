unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ImgList, Vcl.ToolWin,
  Vcl.ComCtrls, System.Actions, Vcl.ActnList;

type
  TForm1 = class(TForm)
    MenuPrincipal: TMainMenu;
    Arquivo1: TMenuItem;
    Cadastro1: TMenuItem;
    Venda1: TMenuItem;
    Sair1: TMenuItem;
    Cliente1: TMenuItem;
    Funcionario1: TMenuItem;
    Produto1: TMenuItem;
    Relatrios1: TMenuItem;
    Clientes1: TMenuItem;
    Produtos1: TMenuItem;
    Vendas1: TMenuItem;
    Ajuda1: TMenuItem;
    StatusBarPrincipal: TStatusBar;
    ToolBarPrincipal: TToolBar;
    ImageListPrincipal48: TImageList;
    ImageListPrincipal20: TImageList;
    ActionListPrincipal: TActionList;
    AcCadCliente: TAction;
    AcCadFuncionario: TAction;
    AcCadProduto: TAction;
    AcVenda: TAction;
    AcRelatorioCliente: TAction;
    AcRelatorioProduto: TAction;
    AcRelatorioVenda: TAction;
    AcSair: TAction;
    AcSobre: TAction;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    procedure AcCadClienteExecute(Sender: TObject);
    procedure AcCadProdutoExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure abreForm(Classe : TFormClass);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses clienteListaU, produtoListaU;

procedure TForm1.abreForm(Classe: TFormClass);
var
  I : Integer;
begin
  for I := 0 to MDIChildCount -1 do begin
    if MDIChildren[I] is Classe then begin//se formulario já está aberto
       if MDIChildren[I].WindowState = wsMinimized then begin //se formulario estiver minimizado
            MDIChildren[I].WindowState := wsNormal; //formulario sai do estado minimizado para normal
       end;

       MDIChildren[I].BringToFront; //traz o formulario para frente
       MDIChildren[I].SetFocus;     //foca no formulario
       Exit;  //Sai da função abreForm
    end; //encerra o if que verifica se o formulario requerido esta aberto
  end;   //encerra o for que percorre todos os formularios abertos no sistema
  Classe.Create(Application); //abre o formulario caso nao tenha sido aberto
end;

procedure TForm1.AcCadClienteExecute(Sender: TObject);
begin
  abreForm(TfrmClienteLista);
end;

procedure TForm1.AcCadProdutoExecute(Sender: TObject);
begin
   abreForm(TfrmProdutoLista);
end;

end.
