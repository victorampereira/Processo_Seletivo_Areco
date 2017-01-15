object frmTesteDelphi: TfrmTesteDelphi
  Left = 0
  Top = 0
  Caption = 'Exerc'#237'cio - Teste Delphi'
  ClientHeight = 472
  ClientWidth = 785
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnResize = FormResize
  OnShow = FormShow
  DesignSize = (
    785
    472)
  PixelsPerInch = 96
  TextHeight = 13
  object Nome: TLabel
    Left = 16
    Top = 16
    Width = 27
    Height = 13
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Nome'
  end
  object lblDescricao: TLabel
    Left = 16
    Top = 43
    Width = 46
    Height = 13
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Descri'#231#227'o'
  end
  object lblClassificacao: TLabel
    Left = 16
    Top = 70
    Width = 61
    Height = 13
    Caption = 'Classifica'#231#227'o'
  end
  object lblValorPretendido: TLabel
    Left = 264
    Top = 70
    Width = 83
    Height = 13
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Valor Pretendido:'
  end
  object lblCustoFabricacao: TLabel
    Left = 550
    Top = 70
    Width = 87
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'Custo Fabrica'#231#227'o:'
    ExplicitLeft = 527
  end
  object lblMateriais: TLabel
    Left = 16
    Top = 97
    Width = 47
    Height = 13
    Caption = 'Materiais:'
  end
  object lblEstoques: TLabel
    Left = 274
    Top = 97
    Width = 48
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'Estoques:'
  end
  object dbgridConteudoTeste: TDBGrid
    Left = 8
    Top = 128
    Width = 769
    Height = 297
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = dtsTeste
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object CmdSair: TButton
    Left = 703
    Top = 439
    Width = 74
    Height = 25
    Align = alCustom
    Anchors = [akRight, akBottom]
    Caption = '&Sair'
    TabOrder = 1
    OnClick = CmdSairClick
  end
  object edtNome: TDBEdit
    Left = 49
    Top = 13
    Width = 728
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'NOME'
    DataSource = dtsTeste
    TabOrder = 2
  end
  object edtDescricao: TDBEdit
    Left = 68
    Top = 40
    Width = 709
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'DESCRICAO'
    DataSource = dtsTeste
    TabOrder = 3
  end
  object edtClassificacao: TDBEdit
    Left = 83
    Top = 67
    Width = 174
    Height = 21
    DataField = 'CLASSIFICACAO'
    DataSource = dtsTeste
    TabOrder = 4
  end
  object edtValorPretendido: TDBEdit
    Left = 353
    Top = 67
    Width = 191
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'VALOR_PRETENDIDO'
    DataSource = dtsTeste
    TabOrder = 5
  end
  object edtCustoFabricacao: TDBEdit
    Left = 639
    Top = 67
    Width = 138
    Height = 21
    Anchors = [akTop, akRight]
    DataField = 'CUSTO_FABRICACAO'
    DataSource = dtsTeste
    TabOrder = 6
  end
  object estMateriais: TDBEdit
    Left = 69
    Top = 94
    Width = 188
    Height = 21
    DataField = 'MATERIAIS'
    DataSource = dtsTeste
    TabOrder = 7
  end
  object edtEstoques: TDBEdit
    Left = 328
    Top = 94
    Width = 449
    Height = 21
    Anchors = [akTop, akRight]
    DataField = 'ESTOQUES'
    DataSource = dtsTeste
    TabOrder = 8
  end
  object btnAlterar: TButton
    Left = 622
    Top = 439
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Alterar'
    TabOrder = 9
    OnClick = btnAlterarClick
  end
  object btnExcluir: TButton
    Left = 541
    Top = 439
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Excluir'
    TabOrder = 10
    OnClick = btnExcluirClick
  end
  object btnIncluir: TButton
    Left = 460
    Top = 439
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Incluir'
    TabOrder = 11
    OnClick = btnIncluirClick
  end
  object btnCancelar: TButton
    Left = 379
    Top = 439
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Cancelar'
    TabOrder = 12
    Visible = False
    OnClick = btnCancelarClick
  end
  object btnAnterior: TButton
    Left = 8
    Top = 439
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Anterior'
    TabOrder = 13
    OnClick = btnAnteriorClick
  end
  object btnProximo: TButton
    Left = 89
    Top = 439
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Proximo'
    TabOrder = 14
    OnClick = btnProximoClick
  end
  object pnlBusca: TPanel
    Left = 68
    Top = 144
    Width = 645
    Height = 153
    BevelInner = bvRaised
    BevelKind = bkSoft
    BevelOuter = bvNone
    TabOrder = 15
    Visible = False
    object lblBuscar: TLabel
      Left = 24
      Top = 40
      Width = 36
      Height = 13
      Caption = 'Buscar:'
    end
    object lblPalavraChave: TLabel
      Left = 24
      Top = 80
      Width = 71
      Height = 13
      Caption = 'Palavra-Chave'
    end
    object pnlBuscaTitulo: TPanel
      Left = 0
      Top = -8
      Width = 649
      Height = 33
      Color = clHotLight
      ParentBackground = False
      TabOrder = 0
      object lblBuscaTitulo: TLabel
        Left = 7
        Top = 9
        Width = 133
        Height = 20
        Caption = 'Configure a sua busca'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object lblBuscaFechar: TLabel
        Left = 630
        Top = 9
        Width = 8
        Height = 20
        Caption = 'X'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        OnClick = lblBuscaFecharClick
      end
    end
    object btnBuscar: TButton
      Left = 288
      Top = 112
      Width = 75
      Height = 25
      Caption = 'Buscar'
      TabOrder = 1
      OnClick = btnBuscarClick
    end
    object cbxBuscar: TComboBox
      Left = 66
      Top = 37
      Width = 535
      Height = 21
      Style = csDropDownList
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
    end
    object edtPalavraChave: TEdit
      Left = 101
      Top = 77
      Width = 500
      Height = 21
      TabOrder = 3
    end
  end
  object btnFiltro: TButton
    Left = 200
    Top = 439
    Width = 155
    Height = 25
    Anchors = [akLeft, akRight, akBottom]
    Caption = 'Buscar produto'
    TabOrder = 16
    OnClick = btnFiltroClick
  end
  object dtsTeste: TDataSource
    DataSet = qryTeste1
    Left = 216
    Top = 336
  end
  object qryTeste1: TQuery
    DatabaseName = 'dbtestesmysql'
    RequestLive = True
    SQL.Strings = (
      'select * from produtos')
    Left = 152
    Top = 336
  end
  object ADOSessaoPrincipal: TADOConnection
    ConnectionString = 
      'Provider=MSDASQL.1;Password=123mudar;Persist Security Info=True;' +
      'User ID=root;Data Source=dbtestesmysql'
    Provider = 'MSDASQL.1'
    Left = 704
    Top = 368
  end
end
