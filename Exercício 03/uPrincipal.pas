unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    edConjunto1: TEdit;
    edConjunto2: TEdit;
    Button1: TButton;
    Memo1: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Intercalar(prmConjunto1, prmConjunto2: String);
    function IsNumber(prmNum: Char): boolean;
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
  if edConjunto1.Text = '' then
  begin
    ShowMessage('Favor digitar o primeiro conjunto');
    edConjunto1.SetFocus();
    Exit();
  end;

  if edConjunto2.Text = '' then
  begin
    ShowMessage('Favor digitar o segundo conjunto');
    edConjunto2.SetFocus();
    Exit();
  end;
  Intercalar(edConjunto1.Text, edConjunto2.Text);
end;

procedure TfrmPrincipal.Intercalar(prmConjunto1, prmConjunto2: String);
var
  QtdNumeros, QtdOutrosCaracteres, Tam1, Tam2, TamTotal,
  ContTotal, Cont1, Cont2: Integer;
  LocResultado: String;
begin
  QtdNumeros := 0;
  QtdOutrosCaracteres := 0;
  Tam1 := prmConjunto1.Length;
  Tam2 := prmConjunto2.Length;
  TamTotal := Tam1 + Tam2;
  cont1:= 1;
  cont2:= Tam2;
  LocResultado := '';

  for ContTotal := 1 to TamTotal do
  begin
    if (ContTotal mod 2 = 1) and (cont1 <= tam1) then
    begin
      LocResultado := LocResultado + prmConjunto1[cont1];

      if IsNumber(prmConjunto1[cont1]) then
        QtdNumeros := QtdNumeros + 1
      else
        QtdOutrosCaracteres := QtdOutrosCaracteres + 1;
      cont1:= cont1+1;
    end
    else if (cont2>0) then
    begin
      LocResultado := LocResultado + prmConjunto2[cont2];
      if IsNumber(prmConjunto2[cont2]) then
        QtdNumeros := QtdNumeros + 1
      else
        QtdOutrosCaracteres := QtdOutrosCaracteres + 1;
      cont2:= cont2-1;
    end
    else if (Tam1>Tam2) and (cont1 <= tam1) then
    begin
      LocResultado := LocResultado + prmConjunto1[cont1];
      cont1:= cont1 + 1;
    end
    else if (Tam2>Tam1) and (cont2>0) then
    begin
      LocResultado := LocResultado + prmConjunto2[cont2];
      cont2:= cont2 + 1;
    end;
  end;

  Memo1.Clear();
  Memo1.Lines.Add('Conjunto 1: '+ prmConjunto1);
  Memo1.Lines.Add('Conjunto 2: '+ prmConjunto2);
  Memo1.Lines.Add('Resultado: '+ LocResultado);
  Memo1.Lines.Add('Quantidade de n?meros: '+ IntToStr(QtdNumeros));
  Memo1.Lines.Add('Quantidade de outros caracteres: '+ IntToStr(QtdOutrosCaracteres));

end;

function TfrmPrincipal.IsNumber(prmNum: Char): boolean;
begin
  try
    StrToInt(prmNum);
    Result:= True;
  except
    Result:= False;
  end;
end;

end.
