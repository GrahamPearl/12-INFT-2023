object fmReception: TfmReception
  Left = 0
  Top = 0
  Caption = 'Reception'
  ClientHeight = 452
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poOwnerFormCenter
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object pgMain: TPageControl
    Left = 0
    Top = 29
    Width = 447
    Height = 404
    ActivePage = tablSubscribers
    Align = alClient
    TabOrder = 0
    object tabProducts: TTabSheet
      Caption = 'Products'
      ImageIndex = 1
      object dbViewProducts: TDBGrid
        Left = 0
        Top = 33
        Width = 439
        Height = 343
        Align = alClient
        DataSource = DM2023.dsProducts
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        PopupMenu = DM2023.popReception_Products
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 439
        Height = 33
        Align = alTop
        TabOrder = 1
        object dbNavProducts: TDBNavigator
          Left = 3
          Top = 3
          Width = 240
          Height = 25
          DataSource = DM2023.dsProducts
          TabOrder = 0
        end
      end
    end
    object tablSubscribers: TTabSheet
      Caption = 'Subscribers'
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 439
        Height = 33
        Align = alTop
        TabOrder = 0
        object dbNavSubscribers: TDBNavigator
          Left = 3
          Top = 3
          Width = 240
          Height = 25
          DataSource = DM2023.dsSubscribers
          TabOrder = 0
        end
      end
      object dbViewSubscribers: TDBGrid
        Left = 0
        Top = 33
        Width = 439
        Height = 343
        Align = alClient
        DataSource = DM2023.dsSubscribers
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        PopupMenu = DM2023.popReception_Subscribers
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 447
    Height = 29
    ButtonHeight = 38
    ButtonWidth = 39
    Caption = 'ToolBar1'
    Images = imgIcons
    TabOrder = 1
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 433
    Width = 447
    Height = 19
    Panels = <>
  end
  object imgIcons: TImageList
    Height = 32
    Width = 32
    Left = 160
    Top = 72
  end
  object MainMenu1: TMainMenu
    Left = 168
    Top = 65528
    object File1: TMenuItem
      Caption = '&File'
      object N1: TMenuItem
        Caption = '-'
      end
      object Close1: TMenuItem
        Caption = '&Close'
        OnClick = Close1Click
      end
    end
    object Views1: TMenuItem
      Caption = 'Views'
      object Products1: TMenuItem
        Caption = 'Products'
        OnClick = Products1Click
      end
      object Subscribers1: TMenuItem
        Caption = 'Subscribers'
        OnClick = Subscribers1Click
      end
    end
  end
end
