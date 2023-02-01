unit frmAdmin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ImgList, Menus, OleCtrls, SHDocVw, Grids, DBGrids,
  ExtCtrls, DBCtrls, StdCtrls;

type
  TfmAdmin = class(TForm)
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    N1: TMenuItem;
    Close1: TMenuItem;
    Views1: TMenuItem;
    Products1: TMenuItem;
    Subscribers1: TMenuItem;
    imgIcons: TImageList;
    StatusBar1: TStatusBar;
    PageControl1: TPageControl;
    tabDashboard: TTabSheet;
    tabQueries: TTabSheet;
    dashboard: TWebBrowser;
    dbViewSubscribers: TDBGrid;
    GroupBox2: TGroupBox;
    dbNavSubscribers: TDBNavigator;
    procedure Close1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmAdmin: TfmAdmin;

implementation
Uses uDM2023;
{$R *.dfm}

procedure TfmAdmin.Close1Click(Sender: TObject);
begin
  self.Close;
end;

end.
