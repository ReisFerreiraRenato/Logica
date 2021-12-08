object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Exerc'#237'cio 03'
  ClientHeight = 326
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 22
  object Label1: TLabel
    Left = 40
    Top = 12
    Width = 96
    Height = 22
    Caption = 'Conjunto 1:'
  end
  object Label2: TLabel
    Left = 208
    Top = 12
    Width = 96
    Height = 22
    Caption = 'Conjunto 2:'
  end
  object edConjunto1: TEdit
    Left = 40
    Top = 40
    Width = 121
    Height = 30
    TabOrder = 0
  end
  object edConjunto2: TEdit
    Left = 208
    Top = 40
    Width = 121
    Height = 30
    TabOrder = 1
  end
  object Button1: TButton
    Left = 352
    Top = 40
    Width = 129
    Height = 30
    Caption = 'Intercalar'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 40
    Top = 120
    Width = 441
    Height = 185
    TabOrder = 3
  end
end
