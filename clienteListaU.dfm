inherited frmClienteLista: TfrmClienteLista
  Caption = 'Lista de Clientes'
  ExplicitTop = -89
  PixelsPerInch = 96
  TextHeight = 13
  inherited gbDados: TGroupBox
    inherited DBGrid1: TDBGrid
      Columns = <
        item
          Expanded = False
          FieldName = 'c_id'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'c_ativo'
          Width = 39
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'c_nome'
          Width = 300
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'c_sexo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'c_email'
          Width = 250
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'c_curso'
          Width = 250
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'c_escola'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'c_data_cadastro'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'c_data_inativo'
          Visible = True
        end>
    end
  end
  inherited pnControle: TPanel
    inherited btnEditar: TBitBtn
      OnClick = btnEditarClick
    end
  end
  inherited ds: TDataSource
    DataSet = dmCantina.ztbCliente
  end
end
