inherited frmClienteDados: TfrmClienteDados
  Caption = 'Dados do Cliente'
  ClientHeight = 336
  ClientWidth = 744
  ExplicitWidth = 760
  ExplicitHeight = 374
  PixelsPerInch = 96
  TextHeight = 13
  inherited gbDados: TGroupBox
    Width = 744
    Height = 256
    ExplicitWidth = 744
    ExplicitHeight = 256
    object Label1: TLabel
      Left = 32
      Top = 24
      Width = 11
      Height = 13
      Caption = 'ID'
      FocusControl = dbeID
    end
    object Label2: TLabel
      Left = 32
      Top = 48
      Width = 29
      Height = 13
      Caption = 'NOME'
      FocusControl = dbeNome
    end
    object Label3: TLabel
      Left = 453
      Top = 22
      Width = 26
      Height = 13
      Caption = 'SEXO'
    end
    object Label4: TLabel
      Left = 32
      Top = 80
      Width = 30
      Height = 13
      Caption = 'EMAIL'
      FocusControl = dbeEmail
    end
    object Label5: TLabel
      Left = 32
      Top = 111
      Width = 33
      Height = 13
      Caption = 'SENHA'
      FocusControl = dbeSenha
    end
    object Label6: TLabel
      Left = 397
      Top = 48
      Width = 35
      Height = 13
      Caption = 'CURSO'
      FocusControl = dbeCurso
    end
    object Label7: TLabel
      Left = 397
      Top = 80
      Width = 39
      Height = 13
      Caption = 'ESCOLA'
      FocusControl = dbeEscola
    end
    object Label8: TLabel
      Left = 280
      Top = 23
      Width = 31
      Height = 13
      Caption = 'ATIVO'
    end
    object Label9: TLabel
      Left = 394
      Top = 111
      Width = 85
      Height = 13
      Caption = 'DATA CADASTRO'
      FocusControl = dbeDataCadastro
    end
    object Label10: TLabel
      Left = 394
      Top = 144
      Width = 72
      Height = 13
      Caption = 'DATA INATIVO'
      FocusControl = dbeInativo
    end
    object dbeID: TDBEdit
      Left = 74
      Top = 21
      Width = 199
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      DataField = 'c_id'
      DataSource = ds
      ReadOnly = True
      TabOrder = 0
    end
    object dbeNome: TDBEdit
      Left = 73
      Top = 45
      Width = 300
      Height = 21
      CharCase = ecUpperCase
      DataField = 'c_nome'
      DataSource = ds
      TabOrder = 2
    end
    object dbeEmail: TDBEdit
      Left = 74
      Top = 74
      Width = 300
      Height = 21
      DataField = 'c_email'
      DataSource = ds
      TabOrder = 6
    end
    object dbeSenha: TDBEdit
      Left = 74
      Top = 108
      Width = 294
      Height = 21
      DataField = 'c_senha'
      DataSource = ds
      PasswordChar = '*'
      TabOrder = 7
    end
    object dbeCurso: TDBEdit
      Left = 439
      Top = 45
      Width = 300
      Height = 21
      CharCase = ecUpperCase
      DataField = 'c_curso'
      DataSource = ds
      TabOrder = 4
    end
    object dbeEscola: TDBEdit
      Left = 439
      Top = 74
      Width = 300
      Height = 21
      CharCase = ecUpperCase
      DataField = 'c_escola'
      DataSource = ds
      TabOrder = 5
    end
    object dbeDataCadastro: TDBEdit
      Left = 485
      Top = 108
      Width = 120
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      DataField = 'c_data_cadastro'
      DataSource = ds
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MaxLength = 8
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
    end
    object DBEdit10: TDBEdit
      Left = 32
      Top = 416
      Width = 238
      Height = 21
      DataField = 'c_data_inativo'
      DataSource = ds
      MaxLength = 8
      TabOrder = 9
    end
    object dbcAtivo: TDBComboBox
      Left = 317
      Top = 19
      Width = 92
      Height = 21
      CharCase = ecUpperCase
      DataField = 'c_ativo'
      DataSource = ds
      Items.Strings = (
        'S'
        'N')
      TabOrder = 1
    end
    object dbcSexo: TDBComboBox
      Left = 485
      Top = 19
      Width = 92
      Height = 21
      CharCase = ecUpperCase
      DataField = 'c_sexo'
      DataSource = ds
      Items.Strings = (
        'M'
        'F')
      TabOrder = 3
    end
    object dbeInativo: TDBEdit
      Left = 485
      Top = 141
      Width = 120
      Height = 21
      TabStop = False
      DataField = 'c_data_inativo'
      DataSource = ds
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MaxLength = 8
      ParentFont = False
      ReadOnly = True
      TabOrder = 10
    end
  end
  inherited pnControle: TPanel
    Top = 256
    Width = 744
    ExplicitTop = 256
    ExplicitWidth = 744
    inherited btSalvar: TBitBtn
      Left = 474
      ExplicitLeft = 474
    end
    inherited btnCancelar: TBitBtn
      Left = 562
      ExplicitLeft = 562
    end
    inherited btFechar: TBitBtn
      Left = 655
      ExplicitLeft = 655
    end
  end
  inherited ds: TDataSource
    DataSet = dmCantina.ztbCliente
  end
end
