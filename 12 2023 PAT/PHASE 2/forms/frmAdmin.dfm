object fmAdmin: TfmAdmin
  Left = 0
  Top = 0
  Caption = 'Admin'
  ClientHeight = 371
  ClientWidth = 592
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 352
    Width = 592
    Height = 19
    Panels = <>
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 592
    Height = 352
    ActivePage = tabQueries
    Align = alClient
    TabOrder = 1
    object tabDashboard: TTabSheet
      Caption = 'Dashboard'
      ExplicitWidth = 281
      ExplicitHeight = 165
      object dashboard: TWebBrowser
        Left = 0
        Top = 0
        Width = 584
        Height = 324
        Align = alClient
        TabOrder = 0
        ExplicitLeft = 96
        ExplicitTop = 96
        ExplicitWidth = 300
        ExplicitHeight = 150
        ControlData = {
          4C0000002F3D0000612400000000000000000000000000000000000000000000
          000000004C000000000000000000000001000000E0D057007335CF11AE690800
          2B2E12620A000000000000004C0000000114020000000000C000000000000046
          8000000000000000000000000000000000000000000000000000000000000000
          00000000000000000100000000000000000000000000000000000000}
      end
    end
    object tabQueries: TTabSheet
      Caption = 'Queries'
      ImageIndex = 1
      ExplicitWidth = 281
      ExplicitHeight = 165
      object dbViewSubscribers: TDBGrid
        Left = 0
        Top = 33
        Width = 584
        Height = 291
        Align = alClient
        DataSource = DM2023.dsQuery
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        PopupMenu = DM2023.popAdmin_Queries
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 584
        Height = 33
        Align = alTop
        TabOrder = 1
        ExplicitLeft = 8
        ExplicitTop = 8
        ExplicitWidth = 439
        object dbNavSubscribers: TDBNavigator
          Left = 3
          Top = 3
          Width = 240
          Height = 25
          DataSource = DM2023.dsQuery
          TabOrder = 0
        end
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 160
    Top = 24
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
        Caption = 'Dashboard'
      end
      object Subscribers1: TMenuItem
        Caption = 'Queries'
      end
    end
  end
  object imgIcons: TImageList
    Height = 32
    Width = 32
    Left = 160
    Top = 72
  end
end
