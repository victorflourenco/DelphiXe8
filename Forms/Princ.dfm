object principal: Tprincipal
  Left = 399
  Top = 173
  Width = 928
  Height = 480
  Caption = 'Programa'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 600
    Top = 40
    object Arquivo1: TMenuItem
      Caption = 'Arquivo'
    end
    object Janela11: TMenuItem
      Caption = 'Janela1'
      object Janela21: TMenuItem
        Caption = 'Janela2'
        OnClick = Janela21Click
      end
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
      OnClick = Sair1Click
    end
  end
end
