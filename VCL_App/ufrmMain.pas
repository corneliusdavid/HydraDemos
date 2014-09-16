unit ufrmMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdActns, ImgList, ActnList, Menus, StdCtrls, ComCtrls, ToolWin;

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
    procedure actFileNewExecute(Sender: TObject);
    procedure actFileSaveExecute(Sender: TObject);
    procedure actAddItemExecute(Sender: TObject);
    procedure actItemDeleteExecute(Sender: TObject);
    procedure actHelpAboutExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  end;

var
  frmVCLApp: TfrmVCLApp;


implementation

{$R *.dfm}

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

procedure TfrmVCLApp.actItemDeleteExecute(Sender: TObject);
begin
  if lbItems.ItemIndex > -1 then
    lbItems.Items.Delete(lbItems.ItemIndex);
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
