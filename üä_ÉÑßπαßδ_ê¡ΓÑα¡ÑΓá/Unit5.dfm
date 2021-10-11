object Form5: TForm5
  Left = 276
  Top = 651
  Width = 346
  Height = 183
  AutoSize = True
  BorderIcons = [biSystemMenu]
  Caption = #1042#1080#1083#1091#1095#1077#1085#1085#1103' '#1082#1072#1090#1077#1075#1086#1088#1110#1111
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
    Width = 338
    Height = 149
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 80
      Height = 13
      Caption = #1053#1072#1079#1074#1072' '#1082#1072#1090#1077#1075#1086#1088#1110#1111
    end
    object Edit1: TEdit
      Left = 16
      Top = 40
      Width = 297
      Height = 21
      TabOrder = 0
    end
    object BitBtn1: TBitBtn
      Left = 144
      Top = 104
      Width = 75
      Height = 25
      Caption = #1054#1050
      TabOrder = 1
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 232
      Top = 104
      Width = 75
      Height = 25
      Caption = #1047#1072#1082#1088#1080#1090#1080
      TabOrder = 2
      OnClick = BitBtn2Click
    end
  end
end
