object dmCantina: TdmCantina
  OldCreateOrder = False
  Height = 404
  Width = 531
  object ZConexao: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'cantina'
    User = 'root'
    Password = 'WESL'
    Protocol = 'mysql-5'
    LibraryLocation = 'F:\DESENVOLVIMENTO\Delphi\Projetos\Cantina\Win32\LIBMYSQL55.DLL'
    Left = 48
    Top = 32
  end
  object ztbCliente: TZTable
    Connection = ZConexao
    Active = True
    TableName = 'c_cliente'
    Left = 56
    Top = 104
    object ztbClientec_id: TLargeintField
      DisplayLabel = 'ID'
      FieldName = 'c_id'
      Required = True
    end
    object ztbClientec_nome: TWideStringField
      DisplayLabel = 'NOME'
      FieldName = 'c_nome'
      Required = True
      Size = 80
    end
    object ztbClientec_sexo: TWideStringField
      DisplayLabel = 'SEXO'
      FieldName = 'c_sexo'
      Size = 1
    end
    object ztbClientec_email: TWideStringField
      DisplayLabel = 'EMAIL'
      FieldName = 'c_email'
      Required = True
      Size = 80
    end
    object ztbClientec_senha: TWideStringField
      DisplayLabel = 'SENHA'
      FieldName = 'c_senha'
      Required = True
      Size = 80
    end
    object ztbClientec_curso: TWideStringField
      DisplayLabel = 'CURSO'
      FieldName = 'c_curso'
      Size = 100
    end
    object ztbClientec_escola: TWideStringField
      DisplayLabel = 'ESCOLA'
      FieldName = 'c_escola'
      Size = 90
    end
    object ztbClientec_ativo: TWideStringField
      DisplayLabel = 'ATIVO'
      FieldName = 'c_ativo'
      Required = True
      Size = 1
    end
    object ztbClientec_data_cadastro: TDateTimeField
      Alignment = taCenter
      DisplayLabel = 'DATA CADASTRO'
      FieldName = 'c_data_cadastro'
      EditMask = '!99/99/00;1;_'
    end
    object ztbClientec_data_inativo: TDateTimeField
      Alignment = taCenter
      DisplayLabel = 'DATA INATIVO'
      FieldName = 'c_data_inativo'
      EditMask = '!99/99/00;1;_'
    end
  end
  object ztbFuncionario: TZTable
    Connection = ZConexao
    TableName = 'f_funcionario'
    Left = 128
    Top = 104
    object ztbFuncionariof_id: TLargeintField
      FieldName = 'f_id'
      Required = True
    end
    object ztbFuncionariof_nome: TWideStringField
      FieldName = 'f_nome'
      Required = True
      Size = 80
    end
    object ztbFuncionariof_usuario: TWideStringField
      FieldName = 'f_usuario'
      Required = True
      Size = 10
    end
    object ztbFuncionariof_senha: TWideStringField
      FieldName = 'f_senha'
      Required = True
      Size = 80
    end
    object ztbFuncionariof_ativo: TWideStringField
      FieldName = 'f_ativo'
      Required = True
      Size = 1
    end
    object ztbFuncionariof_data_cadastro: TDateTimeField
      FieldName = 'f_data_cadastro'
    end
    object ztbFuncionariof_data_inativo: TDateTimeField
      FieldName = 'f_data_inativo'
    end
  end
  object ztbProduto: TZTable
    Connection = ZConexao
    TableName = 'p_produto'
    Left = 200
    Top = 104
    object ztbProdutop_id: TLargeintField
      DisplayLabel = 'ID'
      FieldName = 'p_id'
      Required = True
    end
    object ztbProdutop_nome: TWideStringField
      DisplayLabel = 'NOME'
      FieldName = 'p_nome'
      Required = True
      Size = 80
    end
    object ztbProdutop_foto: TBlobField
      DisplayLabel = 'FOTO'
      FieldName = 'p_foto'
    end
    object ztbProdutop_preco: TFloatField
      DisplayLabel = 'PRECO'
      FieldName = 'p_preco'
      Required = True
      currency = True
    end
    object ztbProdutop_custo: TFloatField
      DisplayLabel = 'CUSTO'
      FieldName = 'p_custo'
      currency = True
    end
    object ztbProdutop_quantidade: TLargeintField
      DisplayLabel = 'QUANTIDADE'
      FieldName = 'p_quantidade'
      Required = True
    end
    object ztbProdutop_qtd_alerta: TLargeintField
      DisplayLabel = 'QTD ALERTA'
      FieldName = 'p_qtd_alerta'
    end
    object ztbProdutop_ativo: TWideStringField
      DisplayLabel = 'ATIVO'
      FieldName = 'p_ativo'
      Required = True
      Size = 1
    end
    object ztbProdutop_data_cadastro: TDateTimeField
      DisplayLabel = 'DATA CADASTRO'
      FieldName = 'p_data_cadastro'
    end
    object ztbProdutop_data_inativo: TDateTimeField
      DisplayLabel = 'DATA INATIVO'
      FieldName = 'p_data_inativo'
    end
  end
  object ztbVenda: TZTable
    Connection = ZConexao
    TableName = 'v_venda'
    Left = 269
    Top = 104
  end
  object zqrCliente: TZQuery
    Params = <>
    Left = 160
    Top = 184
  end
end
