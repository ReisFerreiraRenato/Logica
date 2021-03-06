unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    btnInserir: TButton;
    btnBuscar: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    function InserirFrase(prmFrase: String): Boolean;
    function BuscarFrase(prmFrase: String): Boolean;
    procedure btnBuscarClick(Sender: TObject);
  private
    { Private declarations }
    pvtArrayFrases: TArray<String>;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses uBuscarInserir;

procedure TfrmPrincipal.btnInserirClick(Sender: TObject);
var
  LocString: String;
begin
  try
    frmBuscarInserir:= TfrmBuscarInserir.Create(nil);
    frmBuscarInserir.pbcBuscarInserir := 'I';
    frmBuscarInserir.ShowModal();
    LocString := frmBuscarInserir.pbcFrase;
    if LocString = '' then //Sai se n?o estiver frase
      Exit;

    if not InserirFrase(LocString) then
      ShowMessage('Falha ao inserir Frase');
  finally
    FreeAndNil(frmBuscarInserir);
  end;
end;

function TfrmPrincipal.BuscarFrase(prmFrase: String): Boolean;
var
  LocFrase: String;
  cont : Integer;
begin
  Result := false;
  cont := 0;

  for cont := 0 to Length(pvtArrayFrases)-1 do
  begin
    //Fiz desprezando o case sensitive
    if Pos(UpperCase(prmFrase), UpperCase(pvtArrayFrases[cont]))>0 then
    begin
      LocFrase := LocFrase + pvtArrayFrases[cont] + #13;
    end;
  end;

  if LocFrase = '' then
    ShowMessage('A sub frase "'+prmfrase+'" n?o foi encontrada em nenhuma das frases aramazenadas')
  else
    ShowMessage('A sub frase "'+prmfrase+'" foi encontrada nas frases:'+#13+LocFrase);

  Result := True;
end;

procedure TfrmPrincipal.btnBuscarClick(Sender: TObject);
var
  LocString: String;
begin
  if Length(pvtArrayFrases) = 0 then
  begin
    ShowMessage('N?o existe frases armazenadas, favor inserir');
    btnInserir.SetFocus();
    Exit();
  end;

  try
    frmBuscarInserir:= TfrmBuscarInserir.Create(nil);
    frmBuscarInserir.pbcBuscarInserir := 'B';
    frmBuscarInserir.ShowModal();
    LocString := frmBuscarInserir.pbcFrase;
    if LocString = '' then //Sai se n?o estiver frase
      Exit;

    if not BuscarFrase(LocString) then
      ShowMessage('Falha ao inserir Frase');
  finally
    FreeAndNil(frmBuscarInserir);
  end;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  pvtArrayFrases := TArray<String>.Create();
end;

function TfrmPrincipal.InserirFrase(prmFrase: String): Boolean;
var i: integer;
begin
  Result := False;
  SetLength(pvtArrayFrases, Length(pvtArrayFrases)+1);
  pvtArrayFrases[Length(pvtArrayFrases)-1]:= prmFrase;
  Result := True;
end;

end.
