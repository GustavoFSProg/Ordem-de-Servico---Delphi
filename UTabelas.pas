unit UTabelas;

interface

uses
  SysUtils, Classes, WideStrings, DBXFirebird, FMTBcd, DB, DBClient, Provider,
  SqlExpr;

type
  TDM = class(TDataModule)
    SQLConnection1: TSQLConnection;
    SQLClientes: TSQLDataSet;
    SQLClientesID_CLIENTE: TIntegerField;
    SQLClientesNOME: TStringField;
    SQLClientesTELEFONE: TStringField;
    SQLClientesOS_NUMERO: TLargeintField;
    SQLClientesCELULAR: TStringField;
    SQLClientesEMAIL: TStringField;
    DataSetClientes: TDataSetProvider;
    ClientClientes: TClientDataSet;
    ClientClientesID_CLIENTE: TIntegerField;
    ClientClientesNOME: TStringField;
    ClientClientesTELEFONE: TStringField;
    ClientClientesOS_NUMERO: TLargeintField;
    ClientClientesCELULAR: TStringField;
    ClientClientesEMAIL: TStringField;
    DSClientes: TDataSource;
    SQLOS: TSQLDataSet;
    SQLOSID_ORDEM: TIntegerField;
    SQLOSDATA_ENTRADA: TDateField;
    SQLOSPREVISAO_ENTREGA: TDateField;
    SQLOSDATA_FINALIZACAO: TDateField;
    SQLOSCLIENTE: TStringField;
    SQLOSVEICULOS: TStringField;
    DataSetOS: TDataSetProvider;
    ClientOS: TClientDataSet;
    DSOS: TDataSource;
    ClientOSID_ORDEM: TIntegerField;
    ClientOSDATA_ENTRADA: TDateField;
    ClientOSPREVISAO_ENTREGA: TDateField;
    ClientOSDATA_FINALIZACAO: TDateField;
    ClientOSCLIENTE: TStringField;
    ClientOSVEICULOS: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

end.
