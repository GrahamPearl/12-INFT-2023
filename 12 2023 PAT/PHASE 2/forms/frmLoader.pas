unit frmLoader;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Menus, ImgList, ToolWin, ComCtrls;

type
  TfmLoader = class(TForm)
    gbUser0: TGroupBox;
    lblUser0: TLabel;
    imgUser0: TImage;
    gbUser1: TGroupBox;
    imgUser1: TImage;
    lblUser1: TLabel;
    gbUser2: TGroupBox;
    imgUser2: TImage;
    lblUser2: TLabel;
    MainMenu1: TMainMenu;
    User1: TMenuItem;
    Admin1: TMenuItem;
    Subscriber1: TMenuItem;
    Reception1: TMenuItem;
    N1: TMenuItem;
    Exit1: TMenuItem;
    Settings1: TMenuItem;
    Help1: TMenuItem;
    HomePage1: TMenuItem;
    About1: TMenuItem;
    Search1: TMenuItem;
    tbarMain: TToolBar;
    imgIcons: TImageList;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    procedure gbUser0MouseEnter(Sender: TObject);
    procedure gbUser0MouseLeave(Sender: TObject);
    procedure gbUser0Click(Sender: TObject);
    procedure gbUser1Click(Sender: TObject);
    procedure gbUser2Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure HomePage1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmLoader: TfmLoader;

implementation
uses  ShellApi,frmSubscriber,frmReception, frmAdmin;
{$R *.dfm}

procedure TfmLoader.Exit1Click(Sender: TObject);
begin

  Application.Terminate;
end;

procedure TfmLoader.gbUser0Click(Sender: TObject);
begin
  showMessage('Loading...');
  fmAdmin.showModal;
end;

procedure TfmLoader.gbUser0MouseEnter(Sender: TObject);
begin
  (Sender as TGroupBox).Color := clHighlight;
end;

procedure TfmLoader.gbUser0MouseLeave(Sender: TObject);
begin
  (Sender as TGroupBox).Color := clBtnShadow;
end;

procedure TfmLoader.gbUser1Click(Sender: TObject);
begin
  fmSubscriber.showModal();
end;

procedure TfmLoader.gbUser2Click(Sender: TObject);
begin
  fmReception.ShowModal;
end;

procedure TfmLoader.HomePage1Click(Sender: TObject);
begin
  ShellExecute(Handle, 'open', PChar('http://www.google.com/'), nil, nil, SW_SHOW);
end;

end.
