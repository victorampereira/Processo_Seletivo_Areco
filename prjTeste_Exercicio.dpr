program prjTeste_Exercicio;

uses
  Forms,
  uForm1 in 'uForm1.pas' {frmTesteDelphi};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmTesteDelphi, frmTesteDelphi);
  Application.Run;
end.
