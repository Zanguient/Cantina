inherited ProdutDadosU: TProdutDadosU
  Caption = 'ProdutDadosU'
  ClientHeight = 395
  ClientWidth = 700
  ExplicitWidth = 716
  ExplicitHeight = 433
  PixelsPerInch = 96
  TextHeight = 13
  inherited gbDados: TGroupBox
    Width = 700
    Height = 315
    ExplicitWidth = 700
    ExplicitHeight = 315
    object Panel1: TPanel
      Left = 2
      Top = 15
      Width = 344
      Height = 298
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object Label1: TLabel
        Left = 24
        Top = 10
        Width = 20
        Height = 23
        Caption = 'ID'
        FocusControl = dbeID
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 24
        Top = 54
        Width = 29
        Height = 13
        Caption = 'NOME'
        FocusControl = dbeNome
      end
      object Label3: TLabel
        Left = 271
        Top = 0
        Width = 53
        Height = 23
        Caption = 'ATIVO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 24
        Top = 112
        Width = 69
        Height = 13
        Caption = 'ESTOQUE MIN'
        FocusControl = dbeEstoqueMinimo
      end
      object Label5: TLabel
        Left = 229
        Top = 112
        Width = 66
        Height = 13
        Caption = 'QUANTIDADE'
        FocusControl = dbeQuantidade
      end
      object Label6: TLabel
        Left = 24
        Top = 165
        Width = 34
        Height = 13
        Caption = 'CUSTO'
        FocusControl = dbeCusto
      end
      object Label7: TLabel
        Left = 176
        Top = 165
        Width = 34
        Height = 13
        Caption = 'PRECO'
        FocusControl = dbePreco
      end
      object Label8: TLabel
        Left = 24
        Top = 211
        Width = 85
        Height = 13
        Caption = 'DATA CADASTRO'
        FocusControl = dbeDataCadastro
      end
      object Label9: TLabel
        Left = 176
        Top = 208
        Width = 72
        Height = 13
        Caption = 'DATA INATIVO'
        FocusControl = dbeDataInativo
      end
      object dbeID: TDBEdit
        Left = 50
        Top = 7
        Width = 199
        Height = 31
        DataField = 'p_id'
        DataSource = ds
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object dbeNome: TDBEdit
        Left = 24
        Top = 74
        Width = 314
        Height = 21
        CharCase = ecUpperCase
        DataField = 'p_nome'
        DataSource = ds
        TabOrder = 2
      end
      object dbeEstoqueMinimo: TDBEdit
        Left = 24
        Top = 128
        Width = 199
        Height = 21
        CharCase = ecUpperCase
        DataField = 'p_qtd_alerta'
        DataSource = ds
        TabOrder = 3
      end
      object dbeQuantidade: TDBEdit
        Left = 229
        Top = 128
        Width = 111
        Height = 21
        CharCase = ecUpperCase
        DataField = 'p_quantidade'
        DataSource = ds
        TabOrder = 4
      end
      object dbeCusto: TDBEdit
        Left = 24
        Top = 184
        Width = 134
        Height = 21
        CharCase = ecUpperCase
        DataField = 'p_custo'
        DataSource = ds
        TabOrder = 5
      end
      object dbePreco: TDBEdit
        Left = 176
        Top = 181
        Width = 134
        Height = 21
        CharCase = ecUpperCase
        DataField = 'p_preco'
        DataSource = ds
        TabOrder = 6
      end
      object dbeDataCadastro: TDBEdit
        Left = 24
        Top = 227
        Width = 134
        Height = 21
        TabStop = False
        CharCase = ecUpperCase
        DataField = 'p_data_cadastro'
        DataSource = ds
        ReadOnly = True
        TabOrder = 7
      end
      object dbeDataInativo: TDBEdit
        Left = 176
        Top = 227
        Width = 142
        Height = 21
        TabStop = False
        CharCase = ecUpperCase
        DataField = 'p_data_inativo'
        DataSource = ds
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 8
      end
      object cbAtivo: TDBComboBox
        Left = 265
        Top = 29
        Width = 75
        Height = 21
        DataField = 'p_ativo'
        DataSource = ds
        TabOrder = 1
      end
    end
    object Panel2: TPanel
      Left = 346
      Top = 15
      Width = 352
      Height = 298
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object gbFoto: TGroupBox
        Left = 0
        Top = 0
        Width = 352
        Height = 298
        Align = alClient
        Caption = 'Foto:'
        TabOrder = 0
        object imProduto: TImage
          Left = 2
          Top = 15
          Width = 348
          Height = 281
          Hint = 'Duplo Click para Adicionar Imagem'
          Align = alClient
          Center = True
          IncrementalDisplay = True
          ParentShowHint = False
          Proportional = True
          ShowHint = True
          Stretch = True
          OnDblClick = imProdutoDblClick
          ExplicitLeft = 24
          ExplicitTop = 32
          ExplicitWidth = 105
          ExplicitHeight = 105
        end
      end
    end
  end
  inherited pnControle: TPanel
    Top = 315
    Width = 700
    ExplicitTop = 315
    ExplicitWidth = 700
    inherited btSalvar: TBitBtn
      Left = 430
      ExplicitLeft = 430
    end
    inherited btnCancelar: TBitBtn
      Left = 518
      ExplicitLeft = 518
    end
    inherited btFechar: TBitBtn
      Left = 611
      ExplicitLeft = 611
    end
  end
  inherited ds: TDataSource
    DataSet = dmCantina.ztbProduto
    Left = 536
  end
  object adFoto: TOpenPictureDialog
    Filter = 'JPEG Image File (*.jpg)|*.jpg'
    Title = 'Escolha a foto do Produto'
    Left = 634
    Top = 15
  end
end
