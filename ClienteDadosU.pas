unit ClienteDadosU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, modeloDadosU, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Data.DB, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmClienteDados = class(TfrmModeloDados)
    Label1: TLabel;
    dbeID: TDBEdit;
    Label2: TLabel;
    dbeNome: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    dbeEmail: TDBEdit;
    Label5: TLabel;
    dbeSenha: TDBEdit;
    Label6: TLabel;
    dbeCurso: TDBEdit;
    Label7: TLabel;
    dbeEscola: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    dbeDataCadastro: TDBEdit;
    DBEdit10: TDBEdit;
    dbcAtivo: TDBComboBox;
    dbcSexo: TDBComboBox;
    Label10: TLabel;
    dbeInativo: TDBEdit;
    procedure btSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClienteDados: TfrmClienteDados;

implementation

{$R *.dfm}

uses dmU;

procedure TfrmClienteDados.btSalvarClick(Sender: TObject);
begin
  if dmCantina.ztbClientec_ativo.Value = 'N' then begin
     dmCantina.ztbClientec_data_inativo.Value := now;
  end;

  dmCantina.ztbCliente.Post;


end;

end.
