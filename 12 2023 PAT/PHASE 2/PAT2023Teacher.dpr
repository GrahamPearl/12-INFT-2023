program PAT2023Teacher;

uses
  Forms,
  frmLoader in 'forms\frmLoader.pas' {fmLoader},
  frmAdmin in 'forms\frmAdmin.pas' {fmAdmin},
  frmSubscriber in 'forms\frmSubscriber.pas' {fmSubscriber},
  frmReception in 'forms\frmReception.pas' {fmReception},
  uDM2023 in 'forms\uDM2023.pas' {DM2023: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Shopify';
  Application.CreateForm(TfmLoader, fmLoader);
  Application.CreateForm(TfmAdmin, fmAdmin);
  Application.CreateForm(TfmSubscriber, fmSubscriber);
  Application.CreateForm(TfmReception, fmReception);
  Application.CreateForm(TDM2023, DM2023);
  Application.Run;
end.
