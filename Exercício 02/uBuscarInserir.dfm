object frmBuscarInserir: TfrmBuscarInserir
  Left = 0
  Top = 0
  Caption = 'frmBuscarInserir'
  ClientHeight = 172
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 505
    Height = 172
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ExplicitHeight = 177
    object lblFrase: TLabel
      Left = 24
      Top = 24
      Width = 372
      Height = 23
      Caption = 'Inser'#231#227'o de Frase, digite a frase ou palavra:'
    end
    object btnOK: TButton
      Left = 80
      Top = 122
      Width = 150
      Height = 33
      Caption = 'OK'
      TabOrder = 1
      OnClick = btnOKClick
    end
    object btnCancelar: TButton
      Left = 288
      Top = 122
      Width = 150
      Height = 33
      Caption = 'Cancelar'
      TabOrder = 2
      OnClick = btnCancelarClick
    end
    object edFrase: TEdit
      Left = 24
      Top = 61
      Width = 457
      Height = 31
      TabOrder = 0
    end
  end
end
