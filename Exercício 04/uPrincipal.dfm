object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Exerc'#237'cio 04'
  ClientHeight = 471
  ClientWidth = 568
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 23
  object Label1: TLabel
    Left = 32
    Top = 32
    Width = 74
    Height = 23
    Caption = 'Numero:'
  end
  object lblNumeros: TLabel
    Left = 32
    Top = 120
    Width = 88
    Height = 23
    Caption = 'Numeros: '
  end
  object edNumero: TEdit
    Left = 32
    Top = 61
    Width = 265
    Height = 31
    NumbersOnly = True
    TabOrder = 0
  end
  object btnAdicionar: TButton
    Left = 303
    Top = 61
    Width = 130
    Height = 31
    Caption = 'Adicionar'
    TabOrder = 1
    OnClick = btnAdicionarClick
  end
  object Memo1: TMemo
    Left = 32
    Top = 192
    Width = 513
    Height = 257
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object btnVerificar: TButton
    Left = 248
    Top = 152
    Width = 113
    Height = 34
    Caption = 'Verificar'
    TabOrder = 3
    OnClick = btnVerificarClick
  end
  object bntLimpar: TButton
    Left = 439
    Top = 61
    Width = 106
    Height = 31
    Caption = 'Limpar'
    TabOrder = 4
    OnClick = bntLimparClick
  end
end
