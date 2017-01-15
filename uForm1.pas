unit uForm1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Mask, DBCtrls, DB, DBTables, ADODB,
  ExtCtrls;

type
  TfrmTesteDelphi = class(TForm)
    dbgridConteudoTeste: TDBGrid;
    CmdSair: TButton;
    Nome: TLabel;
    edtNome: TDBEdit;
    lblDescricao: TLabel;
    edtDescricao: TDBEdit;
    edtClassificacao: TDBEdit;
    lblClassificacao: TLabel;
    lblValorPretendido: TLabel;
    edtValorPretendido: TDBEdit;
    lblCustoFabricacao: TLabel;
    edtCustoFabricacao: TDBEdit;
    lblMateriais: TLabel;
    estMateriais: TDBEdit;
    lblEstoques: TLabel;
    edtEstoques: TDBEdit;
    btnAlterar: TButton;
    btnExcluir: TButton;
    btnIncluir: TButton;
    btnCancelar: TButton;
    dtsTeste: TDataSource;
    qryTeste1: TQuery;
    btnAnterior: TButton;
    btnProximo: TButton;
    ADOSessaoPrincipal: TADOConnection;
    pnlBusca: TPanel;
    pnlBuscaTitulo: TPanel;
    lblBuscaTitulo: TLabel;
    lblBuscaFechar: TLabel;
    btnBuscar: TButton;
    lblBuscar: TLabel;
    lblPalavraChave: TLabel;
    cbxBuscar: TComboBox;
    edtPalavraChave: TEdit;
    btnFiltro: TButton;
    procedure CmdSairClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnProximoClick(Sender: TObject);
    procedure btnAnteriorClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lblBuscaFecharClick(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure IniciaSessao();
  end;

var
  frmTesteDelphi: TfrmTesteDelphi;

implementation

{$R *.dfm}

procedure TfrmTesteDelphi.IniciaSessao();
var
  i : Integer;
begin
  i := 0;
  qryTeste1.Close;
  qryTeste1.SQL.Clear;
  qryTeste1.SQL.Add('select * from produtos');
  qryTeste1.Open;

  for i := 0 to qryTeste1.FieldCount - 1 do
  begin
    cbxBuscar.AddItem(qryTeste1.Fields[i].FieldName,nil);
  end;
end;

procedure TfrmTesteDelphi.lblBuscaFecharClick(Sender: TObject);
begin
   pnlBusca.Visible := false;
end;

procedure TfrmTesteDelphi.btnAlterarClick(Sender: TObject);
begin
  if qryTeste1.RecordCount = 0 then
  begin
    Application.MessageBox('Não há nada a alterar','Informação',Windows.MB_ICONINFORMATION);
    Exit;
  end;

  if qryTeste1.Active then
    qryTeste1.Post;
  end;

procedure TfrmTesteDelphi.btnAnteriorClick(Sender: TObject);
begin
  if qryTeste1.Active then
  begin
    qryTeste1.Prior;
  end;
end;

procedure TfrmTesteDelphi.btnBuscarClick(Sender: TObject);
begin
   if qryTeste1.Active then
   begin
       qryTeste1.Close;
       qryTeste1.SQL.Clear;
       qryTeste1.SQL.Add('select * '+
                         '  from produtos '+
                         ' where '+cbxBuscar.Text+ ' like ''%' + edtPalavraChave.Text + '%''');

       qryTeste1.Open;

       btnFiltro.Caption := 'Limpar filtro ativo';
       btnFiltro.Font.Style := [fsBold];

       lblBuscaFechar.OnClick(self);
   end;
end;

procedure TfrmTesteDelphi.btnCancelarClick(Sender: TObject);
begin
if qryTeste1.Active then
begin
    if btnIncluir.Caption = 'Incluir' then
    begin
      btnIncluir.Caption := 'Confirmar';
      btnCancelar.Visible := true;
    end
    else
    begin
      btnIncluir.Caption := 'Incluir';
      btnCancelar.Visible := false;

      qryTeste1.Cancel;
      qryTeste1.Close;
      qryTeste1.Open;
    end;
end;
end;

procedure TfrmTesteDelphi.btnExcluirClick(Sender: TObject);
begin
if qryTeste1.Active then
begin
  if qryTeste1.RecordCount = 0 then
  begin
    Application.MessageBox('Não há nada a excluir','Informação',Windows.MB_ICONINFORMATION);
    Exit;
  end;

  if Application.MessageBox(PChar('Deseja realmente excluir o produto['+qryTeste1.FieldByName('NOME').AsString+'] selecionado no qual as informações aparecem na tela?'),'Confirmação de exclusão',mb_YesNo+Windows.MB_ICONEXCLAMATION) = idYes then
  begin
      qryTeste1.Delete;
      Application.MessageBox('Produto excluído.','Confirmação de exclusão',Windows.MB_ICONINFORMATION);
  end;
end;
end;

procedure TfrmTesteDelphi.btnFiltroClick(Sender: TObject);
begin
  if btnFiltro.Caption = 'Buscar produto' then
  begin
    pnlBusca.Visible := True;
  end
  else if btnFiltro.Caption = 'Limpar filtro ativo' then
  begin
    qryTeste1.Close;
    qryTeste1.SQL.Clear;
    qryTeste1.SQL.Add('select * from produtos');
    qryTeste1.Open;
    btnFiltro.Caption := 'Buscar produto';
    btnFiltro.Font.Style := [];
  end;
end;

procedure TfrmTesteDelphi.btnIncluirClick(Sender: TObject);
begin
if btnFiltro.Font.Style = [fsBold] then
  if Application.MessageBox('Para inserir será necessário apagar a busca. Deseja continuar?','Confirmação',mb_YesNo+mb_IconInformation) = idNo then
  begin
      Exit;
  end;

if qryTeste1.Active then
begin
    if btnIncluir.Caption = 'Incluir' then
    begin
      btnIncluir.Caption := 'Confirmar';
      btnCancelar.Visible := true;
      qryTeste1.Insert;
    end
    else if btnIncluir.Caption = 'Confirmar' then
    begin
      btnIncluir.Caption := 'Incluir';
      btnCancelar.Visible := false;

      if qryTeste1.Active then
      begin
        qryTeste1.Post;

        qryTeste1.Close;
        qryTeste1.Open;
      end;
    end;
end;
end;

procedure TfrmTesteDelphi.btnProximoClick(Sender: TObject);
begin
  if qryTeste1.Active then
  begin
    qryTeste1.Next;
  end;
end;

procedure TfrmTesteDelphi.CmdSairClick(Sender: TObject);
begin
if Application.MessageBox('Deseja sair? Todas informações serão perdidas','Confirmação',mb_YesNo+mb_IconInformation) = idYes then
begin
    Application.Terminate;
end;

end;

procedure TfrmTesteDelphi.FormResize(Sender: TObject);
begin
  if frmTesteDelphi.Width < 801 then
  begin
    frmTesteDelphi.Width := 801;
  end;
end;

procedure TfrmTesteDelphi.FormShow(Sender: TObject);
begin
  IniciaSessao();
end;

end.
