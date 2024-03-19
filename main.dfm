object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'DFFormater 2024'
  ClientHeight = 480
  ClientWidth = 722
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 8
    Top = 135
    Width = 577
    Height = 337
    TabOrder = 0
  end
  object ButtonFormatDelphi: TButton
    Left = 8
    Top = 8
    Width = 193
    Height = 25
    Caption = 'ButtonFormatDelphi'
    TabOrder = 1
    OnClick = ButtonFormatDelphiClick
  end
  object ButtonMinifyHTML: TButton
    Left = 8
    Top = 39
    Width = 193
    Height = 25
    Caption = 'ButtonMinifyHTML'
    TabOrder = 2
    OnClick = ButtonMinifyHTMLClick
  end
  object ButtonFormatCSS: TButton
    Left = 8
    Top = 70
    Width = 193
    Height = 25
    Caption = 'ButtonFormatCSS'
    TabOrder = 3
    OnClick = ButtonFormatCSSClick
  end
  object ButtonMinifySQL: TButton
    Left = 207
    Top = 8
    Width = 193
    Height = 25
    Caption = 'ButtonMinifySQL'
    TabOrder = 4
    OnClick = ButtonMinifySQLClick
  end
  object ButtonFormatJavaScript: TButton
    Left = 207
    Top = 39
    Width = 193
    Height = 25
    Caption = 'ButtonFormatJavaScript'
    TabOrder = 5
    OnClick = ButtonFormatJavaScriptClick
  end
  object ButtonFormatXML: TButton
    Left = 207
    Top = 70
    Width = 193
    Height = 25
    Caption = 'ButtonFormatXML'
    TabOrder = 6
    OnClick = ButtonFormatXMLClick
  end
  object ButtonFormatPHP: TButton
    Left = 406
    Top = 8
    Width = 193
    Height = 25
    Caption = 'ButtonFormatPHP'
    TabOrder = 7
    OnClick = ButtonFormatPHPClick
  end
  object ButtonFormatJson: TButton
    Left = 406
    Top = 39
    Width = 193
    Height = 25
    Caption = 'ButtonFormatJson'
    TabOrder = 8
    OnClick = ButtonFormatJsonClick
  end
end
