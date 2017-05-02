unit modeloDadosU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Data.DB;

type
  TfrmModeloDados = class(TForm)
    gbDados: TGroupBox;
    pnControle: TPanel;
    btSalvar: TBitBtn;
    btnCancelar: TBitBtn;
    btFechar: TBitBtn;
    ds: TDataSource;
    procedure btFecharClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dsDataChange(Sender: TObject; Field: TField);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmModeloDados: TfrmModeloDados;

implementation

{$R *.dfm}

procedure TfrmModeloDados.btFecharClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmModeloDados.btnCancelarClick(Sender: TObject);
begin
  ds.DataSet.Cancel;
end;

procedure TfrmModeloDados.btSalvarClick(Sender: TObject);
begin
  ds.DataSet.Post;
end;

procedure TfrmModeloDados.dsDataChange(Sender: TObject; Field: TField);
begin
  if ds.State in [dsInsert, dsEdit] then begin
    btSalvar.Enabled := true;
    btnCancelar.Enabled := true;
  end
  else begin
    btSalvar.Enabled := false;
    btnCancelar.Enabled := false;
  end;
end;



procedure TfrmModeloDados.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  Self := nil;
end;

procedure TfrmModeloDados.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_ESCAPE then begin //se a tecla ESC for pressionada o formulario é fechado
    Self.Close;
  end;

end;

end.


