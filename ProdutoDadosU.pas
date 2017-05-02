unit ProdutoDadosU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, modeloDadosU, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Data.DB, Vcl.Buttons, Vcl.ExtCtrls, JPEG, Vcl.ExtDlgs;

type
  TProdutDadosU = class(TfrmModeloDados)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    dbeID: TDBEdit;
    Label2: TLabel;
    dbeNome: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    dbeEstoqueMinimo: TDBEdit;
    Label5: TLabel;
    dbeQuantidade: TDBEdit;
    Label6: TLabel;
    dbeCusto: TDBEdit;
    Label7: TLabel;
    dbePreco: TDBEdit;
    Label8: TLabel;
    dbeDataCadastro: TDBEdit;
    Label9: TLabel;
    dbeDataInativo: TDBEdit;
    gbFoto: TGroupBox;
    imProduto: TImage;
    cbAtivo: TDBComboBox;
    adFoto: TOpenPictureDialog;
    procedure dsDataChange(Sender: TObject; Field: TField);
    procedure imProdutoDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProdutDadosU: TProdutDadosU;

implementation

{$R *.dfm}

uses dmU;

procedure TProdutDadosU.dsDataChange(Sender: TObject; Field: TField);
var
  jpg : TJPEGImage;
  stream : TMemoryStream;
begin
  inherited;

  if not (dmCantina.ztbProdutop_foto.IsNull) then begin //se houver foto p/o produto faça:

  try
  //aloca espaço na memoria (cria instancia das classes)
  jpg := TJPEGImage.Create;
  stream := TMemoryStream.Create;

  //carrega imagem do campo p_foto para stream (memoria RAM do pc)
  dmCantina.ztbProdutop_foto.SaveToStream(stream);
  stream.Seek(0, soFromBeginning); //volta o ponteiro para o INICIO da stream
  jpg.LoadFromStream(stream); //grava a stream dentro de jpg
  imProduto.Picture.Assign(jpg);//carrega a imagem na caixa de imagem (imagem do formulario)

  //libera instancias da memoria RAM
  jpg.Free;
  stream.Free;
  except
    on e:exception do begin //pega todos os erros possiveis
         jpg.Free;
         stream.Free;

         MessageBox(Application.Handle, Pchar(e.Message), Pchar('Falha ao carregar imagem do produto'), MB_OK+MB_ICONWARNING );
    end;
  end;
  end
  else begin //se não houver foto cadastrada
     imProduto.Picture.Assign(nil);
  end;
end;

procedure TProdutDadosU.imProdutoDblClick(Sender: TObject);
var
  jpg : TJPEGImage;
begin
  inherited;
  if adFoto.Execute then begin

   try
     //coloca tabela produto em modo de edição
     ds.DataSet.Edit;
     //cria a instancia da classe TJPEGImage
     jpg := TJPEGImage.Create;
     //salva imagem no banco de dados
     dmCantina.ztbProdutop_foto.LoadFromFile(adFoto.FileName);
     //carrega imagem na instancia jpg
     jpg.LoadFromFile(adFoto.FileName);
     //assimila jpg para imProduto (mostra imagem no formulario)
     imProduto.Picture.Assign(jpg);
     //destroi instancia jpg da imagem (libera memoria)
     jpg.Free;
   except
     on E:Exception do begin
         jpg.Free;
         MessageBox(Application.Handle, Pchar('É permitido apenas arquivos JPG para imagem!'), Pchar('Falha ao carregar imagem do produto'),mb_ok+MB_ICONWARNING);
     end;

   end;
   end;

end;

end.
