object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'frmPrincipal'
  ClientHeight = 124
  ClientWidth = 515
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 22
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 515
    Height = 124
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 185
    ExplicitHeight = 41
    object btnInserir: TButton
      Left = 40
      Top = 51
      Width = 234
      Height = 25
      Caption = 'Inserir Frase'
      TabOrder = 0
      OnClick = btnInserirClick
    end
    object btnBuscar: TButton
      Left = 280
      Top = 51
      Width = 225
      Height = 25
      Caption = 'Buscar Texto'
      TabOrder = 1
      OnClick = btnBuscarClick
    end
  end
end
