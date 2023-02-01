object DM2023: TDM2023
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 324
  Width = 513
  object conn: TADOConnection
    LoginPrompt = False
    Provider = 'MSDASQL.1'
    Left = 24
    Top = 16
  end
  object tblTitleLists: TADOTable
    Connection = conn
    CursorType = ctStatic
    TableName = 'titleLists'
    Left = 184
    Top = 72
  end
  object tblSubcribers: TADOTable
    Connection = conn
    CursorType = ctStatic
    TableName = 'subcribers'
    Left = 184
    Top = 16
  end
  object tblCategoryLists: TADOTable
    Connection = conn
    CursorType = ctStatic
    TableName = 'categoryLists'
    Left = 96
    Top = 128
  end
  object tblProductLists: TADOTable
    Connection = conn
    CursorType = ctStatic
    TableName = 'productLists'
    Left = 96
    Top = 72
  end
  object tblProducts: TADOTable
    Connection = conn
    CursorType = ctStatic
    TableName = 'products'
    Left = 96
    Top = 16
  end
  object query: TADOQuery
    Parameters = <>
    Left = 264
    Top = 24
  end
  object dlgOpen: TOpenDialog
    Left = 464
    Top = 24
  end
  object dlgSave: TSaveDialog
    Left = 464
    Top = 80
  end
  object imgIcons: TImageList
    Height = 32
    Width = 32
    Left = 464
    Top = 136
  end
  object popReception_Subscribers: TPopupMenu
    Left = 88
    Top = 192
  end
  object popReception_Products: TPopupMenu
    Left = 232
    Top = 192
  end
  object dsProducts: TDataSource
    DataSet = tblProducts
    Left = 328
    Top = 24
  end
  object dsSubscribers: TDataSource
    DataSet = tblSubcribers
    Left = 328
    Top = 96
  end
  object dsQuery: TDataSource
    DataSet = query
    Left = 328
    Top = 160
  end
  object popAdmin_Queries: TPopupMenu
    Left = 232
    Top = 264
  end
end
