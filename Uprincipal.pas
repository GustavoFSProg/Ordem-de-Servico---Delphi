unit Uprincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, Buttons, DB, Mask, DBCtrls;

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
    procedure Button1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
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

end.
