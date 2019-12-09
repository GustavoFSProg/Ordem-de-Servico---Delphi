unit Uprincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, Buttons, DB, Mask, DBCtrls, Grids,
  DBGrids;

type
  TFprincipal = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DSCli: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    DSOS: TDataSource;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    BitBtn5: TBitBtn;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    Button1: TButton;
    BitBtn8: TBitBtn;
    Edit2: TEdit;
    DBEdit11: TDBEdit;
    DSPROBLEMA: TDataSource;
    Image1: TImage;
    Label13: TLabel;
    DBMemo1: TDBMemo;
    BitBtn9: TBitBtn;
    DSveic: TDataSource;
    ComboBox1: TComboBox;
    Button2: TButton;
    Button3: TButton;
    DBGrid1: TDBGrid;
    Label14: TLabel;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    DBGrid2: TDBGrid;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    DBMemo2: TDBMemo;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    PageControl2: TPageControl;
    TabSheet7: TTabSheet;
    Label26: TLabel;
    DBEdit9: TDBEdit;
    Label27: TLabel;
    Label28: TLabel;
    DBEdit13: TDBEdit;
    Label29: TLabel;
    DBEdit14: TDBEdit;
    Label30: TLabel;
    DBEdit15: TDBEdit;
    Label31: TLabel;
    DBEdit12: TDBEdit;
    DBComboBox1: TDBComboBox;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    DBNavigator1: TDBNavigator;
    TabSheet8: TTabSheet;
    DBGrid3: TDBGrid;
    Label32: TLabel;
    Label33: TLabel;
    DBText1: TDBText;
    procedure Button1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fprincipal: TFprincipal;

implementation

uses UTabelas;

{$R *.dfm}

procedure TFprincipal.BitBtn10Click(Sender: TObject);
begin

 DM.ClientSERVICOS.Open;
 DM.ClientSERVICOS.Append;

end;

procedure TFprincipal.BitBtn11Click(Sender: TObject);
begin

  DM.clientOs.Last;


 DM.ClientSERVICOSID_OS.Value := DM.ClientOSID_ORDEM.Value + 1;

 DM.ClientSERVICOS.Post;
 DM.ClientSERVICOS.Applyupdates(0);
 DM.ClientSERVICOS.Refresh;
 DM.ClientSERVICOS.Close;
 DM.ClientSERVICOS.Open;




end;

procedure TFprincipal.BitBtn3Click(Sender: TObject);
begin

 DM.ClientClientes.Post;
 DM.ClientClientes.ApplyUpdates(0);
 DM.ClientClientes.Refresh;
 DM.ClientClientes.Close;
 DM.Clientclientes.Open;

end;

procedure TFprincipal.BitBtn4Click(Sender: TObject);
begin

 DM.ClientClientes.Locate('nome',Edit2.Text,[LoPartialKey,LoCaseInsensitive])
end;

procedure TFprincipal.BitBtn6Click(Sender: TObject);
begin




  DM.ClientVEICULOSID_CLIENTE.Value:= DM.ClientClientesID_CLIENTE.Value;

  DM.ClientOS.Last;
  DM.ClientVEICULOSID_OS.value:=   DM.ClientOSID_ORDEM.value + 1;

 DM.ClientVEICULOS.Post;
 DM.ClientVEICULOS.ApplyUpdates(0);
 DM.ClientVEICULOS.Refresh;
 DM.ClientVEICULOS.Close;
 DM.ClientVEICULOS.Open;

end;

procedure TFprincipal.BitBtn7Click(Sender: TObject);
begin

 DM.ClientVEICULOS.Open;
 DM.ClientVEICULOS.Append;
end;

procedure TFprincipal.BitBtn8Click(Sender: TObject);
begin

 DM.ClientClientes.Open;
 DM.ClientClientes.Append;
end;

procedure TFprincipal.BitBtn9Click(Sender: TObject);
begin
 combobox1.clear;

   DM.ClientVEICULOS.First;

  while(not DM.ClientVEICULOS.Eof)do
   begin

     if(DM.ClientVEICULOSID_CLIENTE.Value = DM.ClientClientesID_CLIENTE.Value)then
     begin
       ComboBox1.Items.add(dm.ClientVEICULOSDESCRICAO.Value);
     end;

      DM.ClientVEICULOS.Next;
   end;
end;

procedure TFprincipal.Button1Click(Sender: TObject);
begin

 DM.ClientOS.Open;
 DM.ClientOS.Append;

  DM.ClientOS.Last;
  DBEdit1.Text:=IntToStr(DM.ClientOSID_ORDEM.value + 1);


end;

procedure TFprincipal.Button2Click(Sender: TObject);
begin

 DM.ClientPROBLEMA.Open;
 DM.ClientPROBLEMA.Append;
end;

procedure TFprincipal.Button3Click(Sender: TObject);
begin

 DM.ClientOs.Last;

 DM.ClientPROBLEMAID_OS.Value:=DM.clientOSID_ORDEM.value + 1;

 DM.ClientPROBLEMA.Post;
 DM.ClientPROBLEMA.ApplyUpdates(0);
 DM.ClientPROBLEMA.Refresh;
DM.ClientPROBLEMA.close;
DM.ClientPROBLEMA.Open;




end;

procedure TFprincipal.SpeedButton1Click(Sender: TObject);
begin

 DM.ClientPROdutos.Open;
 DM.ClientPROdutos.Append;



end;

procedure TFprincipal.SpeedButton2Click(Sender: TObject);
begin

 DM.ClientOS.Last;

 DM.ClientPRODUTOSID_OS.Value := DM.ClientOSID_ORDEM.Value + 1;

 DM.ClientPRODUTOS.Post;
 DM.ClientPRODUTOS.ApplyUpdates(0);
  DM.ClientPRODUTOS.Refresh;
   DM.ClientPRODUTOS.Close;
    DM.ClientPRODUTOS.Open;



end;

procedure TFprincipal.SpeedButton3Click(Sender: TObject);
begin

 DM.ClientOBS.Open;
 DM.ClientOBS.Append;
end;

procedure TFprincipal.SpeedButton4Click(Sender: TObject);
begin

 DM.ClientOS.Last;

DM.ClientOBSID_OS.Value := DM.ClientOSID_ORDEM.Value + 1 ;

 DM.ClientOBS.Post;
 DM.ClientOBS.ApplyUpdates(0);
 DM.ClientOBS.refresh;
 DM.ClientOBS.Close;
 DM.ClientOBS.Open;

end;

procedure TFprincipal.SpeedButton5Click(Sender: TObject);
begin

  DM.ClientPAGAMENTO.Open;
  DM.ClientPAGAMENTO.Append;


end;

procedure TFprincipal.SpeedButton6Click(Sender: TObject);
begin

  DM.ClientOS.LAST;

  DM.ClientPAGAMENTOID_OS.Value :=   DM.ClientOSID_ORDEM.VALUE  + 1;

  DM.ClientPAGAMENTO.Post;
   DM.ClientPAGAMENTO.ApplyUpdates(0);
    DM.ClientPAGAMENTO.Refresh;
          DM.ClientPAGAMENTO.Close;
      DM.ClientPAGAMENTO.Open;
end;

end.
