unit clienteListaU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, modeloListaU, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Data.DB;

type
  TfrmClienteLista = class(TfrmModeloLista)
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClienteLista: TfrmClienteLista;

implementation

{$R *.dfm}

uses dmU, ClienteDadosU, UPrincipal;

procedure TfrmClienteLista.btnAdicionarClick(Sender: TObject);
begin
  inherited;
  Form1.abreForm(TfrmClienteDados);
end;

procedure TfrmClienteLista.btnEditarClick(Sender: TObject);
begin
  inherited;
  Form1.abreForm(TfrmClienteDados);
end;

end.
