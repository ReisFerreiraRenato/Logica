unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    edNumero: TEdit;
    Label1: TLabel;
    btnAdicionar: TButton;
    Memo1: TMemo;
    btnVerificar: TButton;
    lblNumeros: TLabel;
    bntLimpar: TButton;
    procedure btnAdicionarClick(Sender: TObject);
    function NumeroPerfeito(prmNumero: integer): boolean;
    procedure btnVerificarClick(Sender: TObject);
    procedure bntLimparClick(Sender: TObject);
  private
    { Private declarations }
    pvtNumeros: TArray<Integer>;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.bntLimparClick(Sender: TObject);
begin
  lblNumeros.Caption := 'Numero: ';
  Memo1.Lines.Clear();
  edNumero.Clear();
  edNumero.SetFocus();
  SetLength(pvtNumeros, 0);
end;

procedure TfrmPrincipal.btnAdicionarClick(Sender: TObject);
begin
  if edNumero.Text = '' then
  begin
    ShowMessage('Favor digitar o n?mero');
    edNumero.SetFocus();
    Exit;
  end;

  SetLength(pvtNumeros, Length(pvtNumeros)+1);
  pvtNumeros[Length(pvtNumeros)-1]:= StrToInt(edNumero.Text);
  lblNumeros.Caption := lblNumeros.Caption + edNumero.Text + ',';
  edNumero.Clear();
  edNumero.SetFocus();
end;

procedure TfrmPrincipal.btnVerificarClick(Sender: TObject);
var
  cont: Integer;
begin
  if Length(pvtNumeros) = 0 then
  begin
    ShowMessage('Sem n?meros adicionados');
    edNumero.SetFocus();
    Exit();
  end;

  Memo1.Lines.Clear();
  for cont := 0 to Length(pvtNumeros)-1 do
  begin
    if NumeroPerfeito(pvtNumeros[cont]) then
    begin
      Memo1.Lines.Add(IntToStr(pvtNumeros[cont])+': ? perfeito');
    end
    else
    begin
      Memo1.Lines.Add(IntToStr(pvtNumeros[cont])+': N?o ? perfeito');
    end;
  end;
end;

function TfrmPrincipal.NumeroPerfeito(prmNumero: integer): boolean;
var
  Cont, soma: integer;
begin
  result := false;
  soma := 0;
  for Cont := 1 to prmNumero - 1 do
  begin
    if (prmNumero mod Cont = 0) then
      soma := soma + Cont;
  end;
  if soma = prmNumero then
    Result := true;
end;

end.
