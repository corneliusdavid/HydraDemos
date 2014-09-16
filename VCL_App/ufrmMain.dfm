object frmVCLApp: TfrmVCLApp
  Left = 0
  Top = 0
  Caption = 'VCL App'
  ClientHeight = 340
  ClientWidth = 446
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Verdana'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnActivate = FormActivate
  OnCloseQuery = FormCloseQuery
  DesignSize = (
    446
    340)
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 32
    Top = 61
    Width = 69
    Height = 16
    Caption = 'New Item:'
    FocusControl = edtNewItem
  end
  object Label2: TLabel
    Left = 223
    Top = 61
    Width = 58
    Height = 16
    Caption = 'Item List'
  end
  object btnAddItem: TButton
    Left = 112
    Top = 110
    Width = 105
    Height = 25
    Action = actAddItem
    Images = ImageList1
    TabOrder = 0
  end
  object edtNewItem: TEdit
    Left = 32
    Top = 80
    Width = 185
    Height = 24
    TabOrder = 1
  end
  object lbItems: TListBox
    Left = 223
    Top = 80
    Width = 215
    Height = 252
    Anchors = [akTop, akRight, akBottom]
    TabOrder = 2
  end
  object btnDeleteItem: TButton
    Left = 112
    Top = 141
    Width = 105
    Height = 25
    Action = actItemDelete
    Images = ImageList1
    TabOrder = 3
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 446
    Height = 24
    AutoSize = True
    ButtonWidth = 66
    Caption = 'ToolBar1'
    Flat = False
    Images = ImageList1
    List = True
    ShowCaptions = True
    TabOrder = 4
    Wrapable = False
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Action = actFileExit
    end
    object ToolButton2: TToolButton
      Left = 66
      Top = 0
      Action = actFileNew
    end
    object ToolButton3: TToolButton
      Left = 132
      Top = 0
      Action = actFileSave
    end
    object ToolButton4: TToolButton
      Left = 198
      Top = 0
      Width = 8
      Caption = 'ToolButton4'
      ImageIndex = 3
      Style = tbsSeparator
    end
    object ToolButton5: TToolButton
      Left = 206
      Top = 0
      Action = actHelpAbout
    end
  end
  object MainMenu1: TMainMenu
    Images = ImageList1
    Left = 64
    Top = 136
    object File1: TMenuItem
      Caption = '&File'
      object New1: TMenuItem
        Action = actFileNew
      end
      object Save1: TMenuItem
        Action = actFileSave
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Exit1: TMenuItem
        Action = actFileExit
      end
    end
    object Help1: TMenuItem
      Caption = '&Help'
      object About1: TMenuItem
        Action = actHelpAbout
      end
    end
  end
  object ActionList1: TActionList
    Images = ImageList1
    Left = 64
    Top = 184
    object actAddItem: TAction
      Category = 'Items'
      Caption = '&Add'
      ImageIndex = 3
      OnExecute = actAddItemExecute
    end
    object actFileExit: TFileExit
      Category = 'File'
      Caption = 'E&xit'
      Hint = 'Exit|Quits the application'
      ImageIndex = 0
    end
    object actFileNew: TAction
      Category = 'File'
      Caption = '&New'
      Hint = 'New|Create a new list'
      ImageIndex = 1
      OnExecute = actFileNewExecute
    end
    object actFileSave: TAction
      Category = 'File'
      Caption = '&Save'
      Hint = 'Save|Save the list'
      ImageIndex = 2
      OnExecute = actFileSaveExecute
    end
    object actHelpAbout: TAction
      Category = 'Help'
      Caption = '&About'
      Hint = 'About|Information about this program'
      ImageIndex = 5
      OnExecute = actHelpAboutExecute
    end
    object actItemDelete: TAction
      Category = 'Items'
      Caption = '&Delete'
      ImageIndex = 4
      OnExecute = actItemDeleteExecute
    end
  end
  object ImageList1: TImageList
    Left = 64
    Top = 232
    Bitmap = {
      494C010106000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      00000000000000000000000000000000000000000000F7F7F700FFFFFF004040
      730054547D00FFFFFF00F7F7F900FEFEFE00FEFEFE00F7F7F900FFFFFF005454
      7D0040407300FFFFFF00F7F7F700FFFFFF000000000000000000000000000000
      0000D7E3EB0090C5D50034B8CB0007CAD80007CAD80034B8CB0090C5D500D0DE
      E700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FAFAFD00FFFFFF004D4D7E000707
      C0000000D90040407900FFFFFF00FDFDFE00FDFDFE00FFFFFF00404079000000
      D9000707C0004D4D7E00FFFFFF00F7F7FB000000000000000000DFE9EF0090C9
      D80000E9EF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000E9
      EF0090C9D800DFE9EF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE004D4D86000404B6000303
      FF000606FF000000D20041417D00FFFFFF00FFFFFF0041417D000000D2000606
      FF000303FF000404B7004D4D8500FFFFFF0000000000DFE9EF0062BDCF008BFF
      FF0000FFFF0023929200306F6F002F6F6F002F6F6F002F6E6E002E6E6E0000FF
      FF008BFFFF0062BDCF00DFE9EF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000042428B000A0ABB000202FF000404
      FD000303FB000505FF000000CF0044447900444479000000CF000505FF000303
      FB000404FD000202FF000505B9007C7C9B000000000090C9D8008BFEFF0000FD
      FF0000FDFF00327171004B4B4B00515151004F4F4F004B4B4B004343430000FD
      FF0000FDFF008BFEFF0090C9D800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001E1E86000202D6000505FF000303
      F6000202FA000303F8000404FF000000D6000000D6000404FF000303F8000202
      FA000303F6000606FF000000D70053538700D3E0E90000E2EF0000F8FF0000F8
      FF0000F8FF000CD4DB002683860068686800666666003C6A6C0010C9CF0000F8
      FF0000F8FF0000F8FF0000E2EF00CDDCE6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F50040407E000000CA000505
      F3000202E7000101E9000303E9000303F1000303F1000303E9000101E9000202
      E7000505F3000000CA0040407C00FFFFFF0090C3D50000F2FF0000F2FF0000F2
      FF0000F2FF0000F2FF001F979E007F7F7F007D7D7D003E7A7E0000F2FF0000F2
      FF0000F2FF0000F2FF0000F2FF0090C3D5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFBFE00FFFFFF0041417A000000
      BD000404E0000303D6000202D7000202D7000202D7000202D7000303D6000404
      E0000000BD0041417A00FFFFFF00F8F8FC0034B0CB0000ECFF0000ECFF0000EC
      FF0000ECFF0000ECFF001F959E009595950094949400447F830000ECFF0000EC
      FF0000ECFF0000ECFF0000ECFF0034B0CB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFCFC00FCFCFD00FFFFFF004343
      7A000000AE000404CB000202C5000202C6000202C6000202C5000404CB000000
      AE0043437A00FFFFFF00FCFCFD00FFFFFF0007B7D80000E6FF0000E6FF0000E6
      FF0000E6FF0000E6FF001F929E00ADADAD00ABABAB004983890000E6FF0000E6
      FF0000E6FF0000E6FF0000E6FF0007B7D8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFCFD00FCFCFD00FFFFFF004343
      7A0000009B000404B8000202B2000202B4000202B4000202B2000404B8000000
      9B0043437A00FFFFFF00FCFCFD00FFFFFF0007B4D80000E1FF0000E1FF0000E1
      FF0000E1FF000CC2DB00267B8600C4C4C400C2C2C2004F878F0000E1FF0000E1
      FF0000E1FF0000E1FF0000E1FF0007B4D8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFBFD00FFFFFF0041417A000808
      96000E0EAD000C0CA6000C0CA7000C0CA8000C0CA8000C0CA7000C0CA6000E0E
      AD000808960041417A00FFFFFF00F8F8FB0034A9CB0000DBFF0000DBFF0000DB
      FF0000DBFF004D838C004D838C004D838C004D838C004D838C0000DBFF0000DB
      FF0000DBFF0000DBFF0000DBFF0034A9CB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F50041417B00212192002F2F
      AA002C2CA2002C2CA3002D2DA2003131A6003131A6002D2DA2002C2CA3002C2C
      A2002F2FA9002121920041417B00FFFFFF0090C0D50000D5FF0000D5FF0000D5
      FF0000D5FF0000D5FF0000D5FF0000D5FF0000D5FF0000D5FF0000D5FF0000D5
      FF0000D5FF0000D5FF0000D5FF0090C0D5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000031317A004747A2005757B5005151
      AD005151B0005050AD005C5CB7003E3E9C003E3E9C005C5CB7005050AD005151
      B0005151AC005858B6004747A20055558900B9CEDC0000BEEF0000CFFF0000CF
      FF0000CFFF0000CFFF0004C5F300307180003A616A001B8FAA0000CFFF0000CF
      FF0000CFFF0000CFFF0000BEEF00DAE5EC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004545820052529C008C8CCC007F7F
      C4007D7DC1008D8DCE006161A90046467900464679006161A9008D8DCE007D7D
      C1007F7FC4008C8CCC004E4E9A00404075000000000090C2D8008BE7FF0000CA
      FF0000CAFF0000CAFF00327E9200898989008B8B8B005A676A0000CAFF0000CA
      FF0000CAFF008BE7FF0090C2D800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00535385006767A500C0C0
      E500C3C3E6008888BE0044447D00FFFFFF00FFFFFF0044447D008888BE00C3C3
      E600BFBFE5006868A60053538500FFFFFF0000000000DFE9EF0062AFCF008BE4
      FF0000C3FF0000C3FF0037809600D6D6D600D8D8D800717D810000C3FF0000C3
      FF008BE4FF0062AFCF00DFE9EF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFCFD00FFFFFF004E4E7E009B9B
      BE00BCBCD50047477A00FFFFFF00FDFDFE00FDFDFE00FFFFFF0047477A00BCBC
      D5009B9BBE004E4E7E00FFFFFF00F9F9FB000000000000000000DFE9EF0090C1
      D80000B0EF0000BEFF0008AEE7004E8A9E005E8E9E001396C20000BEFF0000B0
      EF0090C1D800DFE9EF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F8F8F800F7F7F700FFFFFF005858
      870041417500FFFFFF00F9F9FB00FBFBFC00FBFBFC00F9F9FB00FFFFFF004141
      750057578700FFFFFF00F7F7F700FFFFFF000000000000000000000000000000
      0000EEF3F60090BED500349FCB00079ED800079ED800349FCB0090BED500EEF3
      F600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CEC7C000A6846200AB6E3200B76A1B00BA6A1800B16D2800A57A4E00B8AB
      9F00FCFCFC000000000000000000000000000000000000000000825B1E00A383
      52009E7D48009E7D49009E7D49009E7D49009E7D49009E7D49009E7D49009E7D
      49009E7C4B00997544008D6733000000000000000000C2751900BD6B1300B965
      0400B9650400B9650400BA650400BA650400BA650400BA650400BA650400BA65
      0400BA650400BC690A00B96A1500C3791F00000000000000000000000000FDFE
      FD000000000070956F00014D0000004C0000004C0000014D000070956F000000
      0000FDFEFD000000000000000000000000000000000000000000FBFAFA00A38F
      7A00BC610500F87F0200FF800000FF7F0000FF800000FF7E0000FF810000DE70
      01009B724800DFDEDC0000000000000000000000000000000000A08052000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009977450000000000D5933D00EFB73600CDC6C000E9F8
      FF00DBE5F600DBE8F800DBE8F800DBE8F900DBE8F800DAE7F800DBE7F800D8E4
      F500E9F6FF00CDC6C000EAA71400C0761D00000000000000000000000000FEFF
      FE0000000000117B100000F6000006FF060006FF060000F60000117B10000000
      0000FEFFFE0000000000000000000000000000000000FBFBFB009C7D5D00DE6F
      0000FD870800C9710E00F1931B00FF8F0D00FF840500FF981400DB831800DC77
      0A00FD840400A3642700DCDBDA00000000000000000000000000A68556000000
      0000F5F4EC00F3F1E800F3F1E900F3F1E900F2F0E700EFE8DE00EEE9E000EFEB
      E200F6F3ED00F0EBE2009972380000000000CD955100E8AE3C00DCD7D400ECE8
      E900ADA0A200A79B9E009E93950094898C008A81850083797C007B727600685F
      6400ECE8E900DCD7D400E59E2000C77B2500000000000000000000000000FDFF
      FD0000000000117B100000EC000006FF060006FF060000EC0000117B10000000
      0000FDFFFD0000000000000000000000000000000000A2918100DB6D0100FF8B
      0900C0690D009C511700AD6C2200F3B13500FFB42F00D99F3400A05A1C00A355
      1300DE7A0A00FF86040099693A00F4F4F4000000000000000000AD9164000000
      0000F6F4EF00F5F2EF00F5F2EF00F5F2EF00F5F2EF00F6F5ED00F3F4E800F3F0
      EA00FCFCF900EFE9E00099733A0000000000D0965300EAB44700DCD7D400EFF0
      EF00DFDEDC00E1E0DF00E0DFDE00DFE0DD00E0DFDD00DFDEDD00DFE0DE00DBD9
      D900EDEDED00DCD7D400E7A62B00C9802B00FDFEFD00FDFEFD00FDFEFD00FBFE
      FB00FDFFFD00117B100000EA000005FA050005FA050000EA0000117B1000FDFF
      FD00FBFEFB00FDFEFD00FDFEFD00FDFEFD00D2CFCC00B8600700FB860700BC67
      0E00A4571900AF5E1F00A7581B00B26D1F00CE862100A35D1D00AD5B1C00AC5D
      1E00A2561300D9760A00EB780200AA9B8D000000000000000000B39669000000
      0000F6F4EF00F5F2ED00F5F2ED00F5F2ED00F5F3EE00F5F2EE00F7F3EF00F5F2
      ED00FDFDFA00EFE8E00099733A0000000000D49B5800EBB95000DCD7D400ECE8
      E900A99D9F00A4999E009A91940092888B00897F850082797C007A717700655C
      6200ECE8E900DCD7D400E8AC3700CC8531000000000000000000000000000000
      000000000000127A110000D7000007E6070007E6070000D70000127A11000000
      000000000000000000000000000000000000A1856A00F47C0100F68C0F00B75F
      1000A95C1F00AD5D1D00AE5E1D00A8591B00A1531700AD5C1D00AD5D1D00AC5D
      1E00A7591C00CC700F00FF8E0900A8703A000000000000000000B19667000000
      0000F6F4EF00F5F2ED00F5F2ED00F5F2ED00F7F6EF00F6F1EE00FCF6F400FAF3
      F200FEFBFD00EFE9DF009973390000000000D69E5B00EDBD5A00DCD7D400FFFF
      FF00FFFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00DCD7D400EAB34000D08B3400669A660011791000117911001178
      1100127912000775070004CB070007D00C0007D00C0004CB0700017201001279
      120011781100117911001179100071956F00A56D3400FE7F0000FF981600FB89
      0B00C7660F00AA5C1E00AD5D1D00AD5D1D00AE5D1E00AD5D1D00AC5D1E00AC5C
      1B00DA6E0800FF961400FF8C0900BA6C1E000000000000000000B19666000000
      0000F6F4EF00F5F2ED00F4F1EC00F4F0EC00F9F3F200FBFAF000FBF9F500FBF4
      F300FCF7F300EFEAE30099733B0000000000D9A45E00F0C26300DCD7D400ECE8
      E900A99D9F00A4999E009A91940092888B00897F850082797C007A717700655C
      6200ECE8E900DCD7D400EDB74900D2903A00004E000014B419001EBB24001CBB
      22001DB821001FBF240021C0270020C0270020C0270021C027001FBF24001DB8
      21001CBB22001FB9230013BD1900005A0000B0651A00FF810000FF8B0B00FF8C
      0C00FE830200C0651300A95B1E00AD5D1D00AD5D1D00AD5D1D00AA5B1C00DA70
      0800FF860300FF8D0C00FF840200C46D16000000000000000000B0956D000000
      0000F7F4ED00F4F1EC00F6F2ED00F9F2F200FAFAF400FBFDF600FCFAF900F4EF
      E700F5F1EC00F0EAE2009A743C0000000000D8A35C00F0C66D00DCD7D400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00DCD7D400EEBD5400D7963E00004D000037B63E0050C258004BC0
      52004EC154004BBF510049BE510049BF500049BF500049BE51004BBF51004EC1
      55004BC0520050C1570037BE3E00065A0600B0661B00FF800000FE810200FFA6
      2300F2941D00B7611700AB5C1E00AD5D1D00AD5D1D00AD5D1D00AB5B1D00CF6E
      1100FF9C1A00FF8F0D00FF800000C26C16000000000000000000B19E7C000000
      0000FCFEF800F9F9F000FBFAF900FAF9FC00FBFCFB00FAFAFC00F3F1E900EAE5
      DD00ECE7E000E6D8CB009A763C0000000000DEAC6900F9D28100C1975C009A7B
      600095775E0097795D0097795D0097795D0097795D0097795C0097795C009577
      5E009A7A5E00C19A6400F7CA6B00D99B4400004C00005BB6610085CB8B007DC6
      82007EC783007CC5810078C37D0078C37E0078C37E0078C37D007CC582007EC7
      84007CC6820085CA8B005BBC6100004C0000A76F3600FA7C0000FF8A0900E89F
      2D00B3631C00AA5B1D00AD5D1D00AD5D1D00AD5D1D00AD5D1D00AD5D1D00AA5A
      1D00C6711A00F7991D00FF840100B86C20000000000000000000BDA787000000
      0000FDFEFC00FAFBF800FAFAFC00FAFBFE00FCFBF900F5F2EA00F0EEE700E9E2
      DA00E6DDD400D6CBB4009B773E0000000000DDAB6700F6D58B00FFD05600C0A8
      8700C8C5C900CEC6BF00CDC6C000CDC6C000CDC6BF00D6D0CA00D6D3D000CFCE
      D400C0A88800FFD25D00F3CC7500DCA14800004D00006EAE7300A7CEAA0099C6
      9D0099C69E00A4CFA800AED5B300AED5B200AED5B200AED5B300A4CFA80099C6
      9E0099C69D00A7CDAA006DB27300004B0000A3886D00F37A0100EF840C00A056
      1200AA5A1E00AE5D1D00AE5E1E00A75B1D00A45C1B00AA5B1E00AE5D1D00AE5E
      1E00A1551C00BB670F00FF8A0600A8723D000000000000000000C5B190000000
      0000FCFDFD00FAF9F900FAFBFD00FBFDFA00F9F7F000F3EEE400DDD4C500D4BE
      AB00D0BCA100BEA784009B783F0000000000DCA96600F6D99300FBC85D00C2B4
      A200D7DEEB00DDDDDD00DCDDDE00DCDBDD00E7E8EA00C8BAA700A2969200C2B4
      A200C6BCA900FBCB6300F3D07E00E0A74C00668D660014781400177917001678
      1600167916000D730E00C8DDCA00E0ECE300E0ECE300C8DDCA00017102001679
      16001678160016791600147814006F916F00D5D2CF00BD620900FF910E00CF74
      0E00A0531300AD5E2000A4571B00C6690D00E9800A00AE5A1100A85A1F00A85A
      1D00A6560D00E9871000EF7D0600AA9D8F000000000000000000C7B596000000
      0000F8FDFD00FAFBFB00FBFDFA00F6F7EB00F3F1E900E3D9CA00C9B49300EBE3
      DC00E1D9C600B79D73009D773F0000000000E5B97300F6DA9700FBCC6200C8BA
      A700DDE0E900E1DFDD00E0DFDE00DFDDDC00EFF3F9009F886F00E5AF47009E91
      8900C7BDB200FDCF6A00F5D48400E3AC51000000000000000000000000000000
      00000000000014781400BED1C100E6EEE800E6EEE800BED1C100147814000000
      00000000000000000000000000000000000000000000A3938300E2720200FF9C
      1500D0770F00994B0E00C3610700FD931100FFA01B00F07F0500AC540B00A354
      0C00EE8F1500FF910D009C6A3900F5F5F5000000000000000000C8B599000000
      0000FBFDFF00FDFDFD00F6F7F200EDE7E000EFE4DD00D1BEA600CDB99A000000
      0000CFBBA100B3966A00FAF8F50000000000E9BC7500F8DD9E00FDCF6900CEC0
      AF00E3E7EF00E7E5E300E6E5E400E5E4E200F1F6FF00BAA38600FFE87300B5AB
      9E00CAC0B800FFD26E00F9DA8E00E7B25B00FDFEFD00FDFEFD00FEFEFE00FCFD
      FC00FEFFFE0014771400BFD2C200E6EDE700E6EDE700BFD2C20014771400FEFF
      FE00FCFDFC00FEFEFE00FDFEFD00FDFDFD0000000000FBFBFB009D7D5E00E574
      0200FF961300E4962600FDCB5300FFEB7200FFEE7600FFDE6200F0B23E00F091
      1800FF8E0C00AA672600DAD9D800000000000000000000000000C9B89B000000
      0000FCFFFF00FCF8F300F4EBE500E5DFD700E3D6C600CDB69600BCAA8900D6C8
      B400AA8A5700000000000000000000000000EAC07900F8E09B00FBD16500D3C4
      AF00EAEEF600ECEBE800ECEBE900EBE9E600FBFFFF00A28E7800DEAF4F00A89C
      9500D1C7B900FFDA7800F5D88900E2A44200000000000000000000000000FDFE
      FD000000000013771400C5D7C700EBF2EC00EBF2EC00C5D7C700137714000000
      0000FDFEFD000000000000000000000000000000000000000000FBFBFB00A892
      7C00C5650700FF941400FFB33200FFBE3D00FFC44500FFBC3D00FFAB2900E479
      0700A1734900E0DEDC0000000000000000000000000000000000CBBDA2000000
      000000000000FAF7F600F0E8DF00DFD7C700D8C6B100C1AA85009F824C00B296
      6A0000000000000000000000000000000000ECC47E00FEF4D500FFE29000DCD7
      D400F5FFFF00F6FEFF00F6FEFF00F6FDFF00FFFFFF00DFDDDC00C8BAA700DFDD
      DC00E5E4E200FFDE8800E4AA4500FCF5EC00000000000000000000000000FDFE
      FD000000000013771300AFC6B200D6E3D900D6E3D900AFC6B200137713000000
      0000FDFEFD000000000000000000000000000000000000000000000000000000
      0000D0CBC500A7866700AE6F3700B8682200B8601200AF642400A7784F00BCAF
      A400FCFCFC000000000000000000000000000000000000000000C4B39300CFBD
      A400CDBCA100C9B79B00C8B69A00C5AF8D00C3AB8500AA916100AA8C5E000000
      000000000000000000000000000000000000ECC68100F0CA8200F4CA7D00E8C7
      8800EFCF9400EFD49800EDCF9200EED09200EED09300F2D39600F7D79B00F6D6
      9B00E6C48A00EBB55200FDF9F200FFFFFF00000000000000000000000000FDFE
      FD0000000000678D6700024D0200024D0200024D0200024D0200678D67000000
      0000FDFEFD00000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF008000F00F000000000000C00300000000
      0000800100000000000080010000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008001000000000000800100000000
      0000C003000000000000F00F00000000F007C0018000E817C003DFFD0000E817
      8001D0010000E8178000D001000000000000D0010000F81F0000D00100000000
      0000D001000000000000D001000000000000D001000000000000D00100000000
      0000D001000000000000D0010000F81F8000D011000000008001D0070000E817
      C003D80F0000E817F007C01F0000E81700000000000000000000000000000000
      000000000000}
  end
end
