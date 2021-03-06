unit untPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    edNumero: TEdit;
    Button1: TButton;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
    function CalcularResultado(prmNumero: Integer): Double;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.Button1Click(Sender: TObject);
begin
  if edNumero.Text = '' then
  begin
    ShowMessage('Favor digitar o n?mero');
    edNumero.SetFocus();
    Exit;
  end;

  ShowMessage('O resultado ? = '+ FormatFloat('#0.0000', CalcularResultado(StrToInt(edNumero.Text))));

end;

function TfrmPrincipal.CalcularResultado(prmNumero: Integer): Double;
var
  cont, denominador: Integer;
  X : Double;
  operador: Boolean; //True Soma, false subtrai
begin
  cont := 0;
  X := 0;
  denominador := 1;
  operador := True;

  if prmNumero = 1 then
  begin
    Result := 1;
    Exit;
  end;
  if prmNumero = 2 then
  begin
    Result := 2;
    Exit;
  end;

  cont := prmNumero;
  X := (cont * (cont-1)) / denominador;
  denominador:= denominador+1;

  for cont := prmNumero-1 downto 2 do
  begin
    if operador then
      X := X + ((cont * (cont-1)) / denominador)
    else
      X := X - ((cont * (cont-1)) / denominador);
    operador := not operador;
    denominador:= denominador+1;
  end;

  Result := X;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  edNumero.SetFocus();
end;

end.
