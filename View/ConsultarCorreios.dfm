object FrmConsultaCorreios: TFrmConsultaCorreios
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'FrmConsultaCorreios'
  ClientHeight = 263
  ClientWidth = 509
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 509
    Height = 263
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitWidth = 679
    ExplicitHeight = 358
    object lblTitulo: TLabel
      Left = 59
      Top = 9
      Width = 364
      Height = 24
      Caption = 'Consulta CEP - Via WebService (Via CEP)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object btnConsultaCEP: TSpeedButton
      Left = 143
      Top = 58
      Width = 97
      Height = 30
      Caption = 'Consultar CEP'
      OnClick = btnConsultaCEPClick
    end
    object lblLogradouro: TLabel
      Left = 13
      Top = 93
      Width = 55
      Height = 13
      Caption = 'Logradouro'
    end
    object lblComplemento: TLabel
      Left = 13
      Top = 139
      Width = 65
      Height = 13
      Caption = 'Complemento'
    end
    object lblBairro: TLabel
      Left = 299
      Top = 137
      Width = 28
      Height = 13
      Caption = 'Bairro'
    end
    object lblMunicipio: TLabel
      Left = 13
      Top = 182
      Width = 43
      Height = 13
      Caption = 'Municipio'
    end
    object lblUF: TLabel
      Left = 167
      Top = 182
      Width = 33
      Height = 13
      Caption = 'Estado'
    end
    object lblIBGE: TLabel
      Left = 299
      Top = 182
      Width = 59
      Height = 13
      Caption = 'C'#243'digo IBGE'
    end
    object lblCep: TLabel
      Left = 13
      Top = 44
      Width = 73
      Height = 13
      Caption = 'Informe o CEP:'
    end
    object btnLimpar: TSpeedButton
      Left = 254
      Top = 58
      Width = 91
      Height = 30
      Caption = 'Limpar Campos'
      OnClick = btnLimparClick
    end
    object edtCEP: TEdit
      Left = 13
      Top = 63
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object edtLogradouro: TEdit
      Left = 13
      Top = 112
      Width = 458
      Height = 21
      TabOrder = 1
    end
    object edtComplemento: TEdit
      Left = 13
      Top = 155
      Width = 276
      Height = 21
      TabOrder = 2
    end
    object edtMunicipio: TEdit
      Left = 13
      Top = 199
      Width = 143
      Height = 21
      TabOrder = 4
    end
    object edtUF: TEdit
      Left = 165
      Top = 199
      Width = 124
      Height = 21
      TabOrder = 5
    end
    object edtBairro: TEdit
      Left = 299
      Top = 155
      Width = 172
      Height = 21
      TabOrder = 3
    end
    object edtIBGE: TEdit
      Left = 299
      Top = 199
      Width = 172
      Height = 21
      TabOrder = 6
    end
  end
end
