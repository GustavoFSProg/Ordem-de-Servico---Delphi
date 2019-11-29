program Ordem_de_servico;

uses
  Forms,
  Uprincipal in 'Uprincipal.pas' {Fprincipal},
  UTabelas in 'UTabelas.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFprincipal, Fprincipal);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
