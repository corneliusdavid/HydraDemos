object VersionedAboutPlugin: TVersionedAboutPlugin
  Left = 250
  Top = 250
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'About...'
  ClientHeight = 236
  ClientWidth = 278
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poScreenCenter
  Scaled = False
  OnClose = HYVisualPluginClose
  PixelsPerInch = 96
  TextHeight = 13
  object grpAppName: TGroupBox
    Left = 19
    Top = 8
    Width = 245
    Height = 113
    Caption = 'grpAppName'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object lblVersion: TLabel
      Left = 16
      Top = 24
      Width = 217
      Height = 32
      AutoSize = False
      Caption = 'lblVersion'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object lblCopyright: TLabel
      Left = 16
      Top = 59
      Width = 217
      Height = 38
      AutoSize = False
      Caption = 'lblCopyright'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
  end
  object btnOK: TBitBtn
    Left = 104
    Top = 176
    Width = 75
    Height = 25
    Kind = bkOK
    TabOrder = 1
    OnClick = btnOKClick
  end
end
