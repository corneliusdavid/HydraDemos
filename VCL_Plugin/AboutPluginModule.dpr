library AboutPluginModule;

uses
  SysUtils,
  Classes,
  udmAboutPluginModuleController in 'udmAboutPluginModuleController.pas' {AboutPluginModuleController: THYModuleController},
  ufrmSimpleAboutPlugin in 'ufrmSimpleAboutPlugin.pas' {SimpleAboutPlugin: THYVisualPlugin},
  ufrmVersionedAboutPlugin in 'ufrmVersionedAboutPlugin.pas' {VersionedAboutPlugin: THYVisualPlugin},
  uVersionedAboutIntf in '..\shared\uVersionedAboutIntf.pas';

{#HYDRAMODULE}
{$R *.res}

begin
end.
