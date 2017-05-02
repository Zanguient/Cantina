unit modeloListaU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Data.DB;

type
  TfrmModeloLista = class(TForm)
    gbFiltro: TGroupBox;
    gbDados: TGroupBox;
    pnControle: TPanel;
    edFiltro: TEdit;
    lbFiltro: TLabel;
    BitBtn1: TBitBtn;
    DBGrid1: TDBGrid;
    btnExcluir: TBitBtn;
    btnAdicionar: TBitBtn;
    btnFechar: TBitBtn;
    btnEditar: TBitBtn;
    ds: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure edFiltroChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmModeloLista: TfrmModeloLista;
  CampoFiltro : string;

implementation

{$R *.dfm}

procedure TfrmModeloLista.BitBtn1Click(Sender: TObject);
begin

  if ds.DataSet.FieldByName(CampoFiltro) is TWideStringField then begin
     //define a regra do filtro para texto
     ds.DataSet.Filter := CampoFiltro+' like '+QuotedStr('*'+edFiltro.Text+'*');
  end
  else begin
     //define a regra do filtro para numericos, datas, etc SEM like no filtro
     ds.DataSet.Filter := CampoFiltro+' = '+edFiltro.Text;
  end;
  //ativa o filtro
  ds.DataSet.Filtered := true;

  edFiltro.SetFocus;
end;

procedure TfrmModeloLista.btnAdicionarClick(Sender: TObject);
begin
  ds.DataSet.Append; //append insere na ultima linha da tabela da dbgrid
end;

procedure TfrmModeloLista.btnExcluirClick(Sender: TObject);
begin
//verificar se tem registro para ser excluido
  if ds.DataSet.RecordCount = 0 then begin //se recordcount = 0 é porque não tem nenhum registro
     MessageBox(Application.Handle, Pchar('Não exite registro para ser excluido!'), Pchar('Falha ao excluir registro'),MB_OK+MB_ICONERROR);
     Exit;
  end;
//Caixa de confirmação antes de deletar
  if MessageBox(Application.Handle, Pchar('Deseja excluir esse registro?'), Pchar('Confirmar Exclusão'),MB_YESNO+MB_ICONQUESTION) = ID_YES then
       ds.DataSet.Delete;   //deleta registro
end;

procedure TfrmModeloLista.btnFecharClick(Sender: TObject);
begin
  Self.Close; //self é a variavel que representa a class ativa.
end;

procedure TfrmModeloLista.DBGrid1TitleClick(Column: TColumn);
begin
  lbFiltro.Caption := Column.Title.Caption+' : ';
  edFiltro.Clear;
  CampoFiltro := Column.FieldName;
  ds.DataSet.Filtered := false;

  edFiltro.SetFocus;//o cursor vai para o edit
end;

procedure TfrmModeloLista.edFiltroChange(Sender: TObject);
begin
  if Length(edFiltro.Text) = 0 then begin
    BitBtn1.Enabled := false; //desabilita botao de pesquisa, se o edit tiver vazio
    ds.DataSet.Filtered := false;
  end
  else begin
    BitBtn1.Enabled := true;
  end;

end;

procedure TfrmModeloLista.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ds.DataSet.Close;
  Action := caFree; //desaloca/libera o formulario da memoria
  Self := nil;
end;

procedure TfrmModeloLista.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_ESCAPE then begin
    Self.Close;
  end;

end;

procedure TfrmModeloLista.FormShow(Sender: TObject);
begin
  ds.DataSet.Open; //ativar a tabela

  lbFiltro.Caption := DBGrid1.Columns[0].Title.Caption+' : '; //pega o caption da coluna da dbgrid e seta a Label tbFiltro
  edFiltro.Clear; //limpa o edit
  CampoFiltro := DBGrid1.Columns[0].FieldName; //pega nome da coluna
  ds.DataSet.Filtered := false;
end;

end.
