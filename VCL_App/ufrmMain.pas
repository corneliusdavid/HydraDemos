unit ufrmMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdActns, ImgList, ActnList, Menus, StdCtrls, ComCtrls, ToolWin,
  uHYModuleManager;

type
  TfrmVCLApp = class(TForm)
    btnAddItem: TButton;
    edtNewItem: TEdit;
    Label1: TLabel;
    lbItems: TListBox;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Exit1: TMenuItem;
    N2: TMenuItem;
    Save1: TMenuItem;
    New1: TMenuItem;
    Help1: TMenuItem;
    About1: TMenuItem;
    ActionList1: TActionList;
    actAddItem: TAction;
    ImageList1: TImageList;
    actFileExit: TFileExit;
    actFileNew: TAction;
    actFileSave: TAction;
    actHelpAbout: TAction;
    actItemDelete: TAction;
    btnDeleteItem: TButton;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    Label2: TLabel;
    HYModuleManager1: THYModuleManager;
    actHydraLoadModules: TAction;
    Plugins1: TMenuItem;
    LoadPlugins1: TMenuItem;
    actShowPlugins: TAction;
    ShowLoadedModulesandPlugins1: TMenuItem;
    dlgPluginList: TTaskDialog;
    procedure actFileNewExecute(Sender: TObject);
    procedure actFileSaveExecute(Sender: TObject);
    procedure actAddItemExecute(Sender: TObject);
    procedure actItemDeleteExecute(Sender: TObject);
    procedure actHelpAboutExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure actHydraLoadModulesExecute(Sender: TObject);
    procedure actShowPluginsExecute(Sender: TObject);
  end;

var
  frmVCLApp: TfrmVCLApp;


implementation

{$R *.dfm}

uses
  uHYPluginDescriptors;

procedure TfrmVCLApp.actAddItemExecute(Sender: TObject);
begin
  if Length(Trim(edtNewItem.Text)) > 0 then begin
    lbItems.Items.Add(Trim(edtNewItem.Text));
    edtNewItem.Text := EmptyStr;
  end;
end;

procedure TfrmVCLApp.actFileNewExecute(Sender: TObject);
begin
  lbItems.Items.Clear;
end;

procedure TfrmVCLApp.actFileSaveExecute(Sender: TObject);
begin
  lbItems.Items.SaveToFile(ChangeFileExt(Application.ExeName, '.txt'));
end;

procedure TfrmVCLApp.actHelpAboutExecute(Sender: TObject);
begin
  ShowMessage('Standard VCL Demo App');
end;

procedure TfrmVCLApp.actHydraLoadModulesExecute(Sender: TObject);
begin
  HYModuleManager1.LoadModules(ExtractFilePath(Application.ExeName) + '*.dll');
end;

procedure TfrmVCLApp.actItemDeleteExecute(Sender: TObject);
begin
  if lbItems.ItemIndex > -1 then
    lbItems.Items.Delete(lbItems.ItemIndex);
end;

procedure TfrmVCLApp.actShowPluginsExecute(Sender: TObject);

  function PluginTypeToStr(const PluginType: THYPluginType): string;
  begin
    case PluginType of
      ptNonVisual:
        Result := 'Non-Visual';
      ptVisual:
        Result := 'Visual';
      ptService:
        Result := 'Service';
      ptUnknown:
        Result := 'Unknown';
    end;
  end;

var
  i: Integer;
  PluginList: TStringList;
  ModuleList: TStringList;
begin
  PluginList := TStringList.Create;
  ModuleList := TStringList.Create;
  try
    for i := 0 to HYModuleManager1.ModuleCount - 1 do
      ModuleList.Add(ExtractFileName(HYModuleManager1.Modules[i].FileName));

    for i := 0 to HYModuleManager1.PluginDescriptorCount - 1 do begin
      PluginList.Add(Format('Name: %s - Version %d.%d (%s)', [HYModuleManager1.PluginDescriptors[i].Name,
                                                        HYModuleManager1.PluginDescriptors[i].MajorVersion,
                                                        HYModuleManager1.PluginDescriptors[i].MinorVersion,
                                                        PluginTypeToStr(HYModuleManager1.PluginDescriptors[i].PluginType)]));
      PluginList.Add('Description: ' + HYModuleManager1.PluginDescriptors[i].Description);
      PluginList.Add(EmptyStr);
    end;

    dlgPluginList.Text := PluginList.GetText;
    dlgPluginList.ExpandedText := ModuleList.GetText;
    dlgPluginList.Execute;
  finally
    ModuleList.Free;
    PluginList.Free;
  end;
end;

procedure TfrmVCLApp.FormActivate(Sender: TObject);
begin
  lbItems.Items.LoadFromFile(ChangeFileExt(Application.ExeName, '.txt'));
end;

procedure TfrmVCLApp.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if MessageBox(Handle, PChar('Do you want to save the list?'), PChar(Application.Title), MB_YESNO + MB_ICONQUESTION + MB_TASKMODAL) = ID_YES then
    actFileSave.Execute;
end;

end.
