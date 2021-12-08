unit uBuscarInserir;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmBuscarInserir = class(TForm)
    Panel1: TPanel;
    btnOK: TButton;
    btnCancelar: TButton;
    edFrase: TEdit;
    lblFrase: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    pbcFrase: String;
    pbcBuscarInserir: Char; //B Busca I Inserir;
  end;

var
  frmBuscarInserir: TfrmBuscarInserir;

implementation

{$R *.dfm}

procedure TfrmBuscarInserir.btnOKClick(Sender: TObject);
begin
  if edFrase.Text = '' then
  begin
    ShowMessage('Favor digitar a frase ou palavra');
    edFrase.SetFocus();
    Exit;
  end;
  pbcFrase := edFrase.Text;
  Close();
end;

procedure TfrmBuscarInserir.btnCancelarClick(Sender: TObject);
begin
  Close();
end;

procedure TfrmBuscarInserir.FormShow(Sender: TObject);
begin
  if pbcBuscarInserir = 'I' then
  begin
    frmBuscarInserir.Caption := 'Inserir Frase';
    lblFrase.Caption := 'Inserção, digite a palavra ou frase:';
  end
  else
  begin
    frmBuscarInserir.Caption := 'Buscar Frase';
    lblFrase.Caption := 'Busca, inserir palavra ou frase:';
  end;
  pbcFrase := '';
  edFrase.SetFocus();
end;

end.
