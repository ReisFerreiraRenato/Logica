program Exercício02;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  uBuscarInserir in 'uBuscarInserir.pas' {frmBuscarInserir};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmBuscarInserir, frmBuscarInserir);
  Application.Run;
end.
