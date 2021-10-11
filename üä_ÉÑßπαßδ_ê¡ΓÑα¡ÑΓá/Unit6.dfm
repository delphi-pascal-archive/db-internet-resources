object Form6: TForm6
  Left = 270
  Top = 150
  Width = 427
  Height = 273
  AutoSize = True
  BorderIcons = [biSystemMenu]
  Caption = #1044#1086#1076#1072#1090#1080' '#1085#1086#1074#1091' '#1072#1076#1088#1077#1089#1091
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 419
    Height = 239
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 37
      Height = 13
      Caption = #1040#1076#1088#1077#1089#1072
    end
    object Label2: TLabel
      Left = 16
      Top = 72
      Width = 104
      Height = 13
      Caption = #1030#1085#1092#1086#1088#1084#1072#1094#1110#1103' '#1087#1088#1086' '#1089#1072#1081#1090
    end
    object Edit1: TEdit
      Left = 16
      Top = 40
      Width = 377
      Height = 21
      TabOrder = 0
    end
    object Memo1: TMemo
      Left = 16
      Top = 88
      Width = 377
      Height = 89
      TabOrder = 1
    end
    object BitBtn1: TBitBtn
      Left = 216
      Top = 200
      Width = 75
      Height = 25
      Caption = #1054#1050
      TabOrder = 2
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 312
      Top = 200
      Width = 75
      Height = 25
      Caption = #1047#1072#1082#1088#1080#1090#1080
      TabOrder = 3
      OnClick = BitBtn2Click
    end
  end
end
