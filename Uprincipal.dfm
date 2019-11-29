object Fprincipal: TFprincipal
  Left = 0
  Top = 0
  Caption = 'Ordem de servi'#231'o'
  ClientHeight = 606
  ClientWidth = 882
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 88
    Width = 72
    Height = 14
    Caption = 'OS N'#250'mero '
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 176
    Top = 87
    Width = 100
    Height = 14
    Caption = 'DATA  ENTRADA'
    FocusControl = DBEdit2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 328
    Top = 87
    Width = 122
    Height = 14
    Caption = 'PREVISAO ENTREGA'
    FocusControl = DBEdit3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 480
    Top = 87
    Width = 120
    Height = 14
    Caption = 'DATA FINALIZACAO'
    FocusControl = DBEdit4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 882
    Height = 81
    Align = alTop
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 16
      Top = 13
      Width = 89
      Height = 57
      Caption = 'Gravar Dados'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 111
      Top = 13
      Width = 89
      Height = 57
      Caption = 'Finalizar OS'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 1
    end
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 152
    Width = 866
    Height = 433
    ActivePage = TabSheet1
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Clientes/Ve'#237'culo'
      ExplicitHeight = 470
      object Label5: TLabel
        Left = 16
        Top = 24
        Width = 29
        Height = 13
        Caption = 'NOME'
        FocusControl = DBEdit5
      end
      object Label6: TLabel
        Left = 16
        Top = 96
        Width = 50
        Height = 13
        Caption = 'TELEFONE'
        FocusControl = DBEdit6
      end
      object Label7: TLabel
        Left = 232
        Top = 96
        Width = 44
        Height = 13
        Caption = 'CELULAR'
        FocusControl = DBEdit7
      end
      object Label8: TLabel
        Left = 448
        Top = 96
        Width = 30
        Height = 13
        Caption = 'EMAIL'
        FocusControl = DBEdit8
      end
      object Label9: TLabel
        Left = 24
        Top = 192
        Width = 111
        Height = 13
        Caption = 'VEICULOS DO CLIENTE'
        FocusControl = DBEdit9
      end
      object DBEdit5: TDBEdit
        Left = 16
        Top = 40
        Width = 505
        Height = 21
        DataField = 'NOME'
        DataSource = DSCli
        TabOrder = 0
      end
      object BitBtn3: TBitBtn
        Left = 536
        Top = 38
        Width = 89
        Height = 25
        Caption = 'Cadastrar'
        DoubleBuffered = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300000000
          0000333377777777777733330FFFFFFFFFF033337F3FFF3F3FF733330F000F0F
          00F033337F777373773733330FFFFFFFFFF033337F3FF3FF3FF733330F00F00F
          00F033337F773773773733330FFFFFFFFFF033337FF3333FF3F7333300FFFF00
          F0F03333773FF377F7373330FB00F0F0FFF0333733773737F3F7330FB0BF0FB0
          F0F0337337337337373730FBFBF0FB0FFFF037F333373373333730BFBF0FB0FF
          FFF037F3337337333FF700FBFBFB0FFF000077F333337FF37777E0BFBFB000FF
          0FF077FF3337773F7F37EE0BFB0BFB0F0F03777FF3733F737F73EEE0BFBF00FF
          00337777FFFF77FF7733EEEE0000000003337777777777777333}
        NumGlyphs = 2
        ParentDoubleBuffered = False
        TabOrder = 1
      end
      object BitBtn4: TBitBtn
        Left = 647
        Top = 38
        Width = 90
        Height = 25
        Caption = 'Pesquisar'
        DoubleBuffered = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33033333333333333F7F3333333333333000333333333333F777333333333333
          000333333333333F777333333333333000333333333333F77733333333333300
          033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
          33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
          3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
          33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
          333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
          333333773FF77333333333370007333333333333777333333333}
        NumGlyphs = 2
        ParentDoubleBuffered = False
        TabOrder = 2
      end
      object DBEdit6: TDBEdit
        Left = 16
        Top = 112
        Width = 199
        Height = 21
        DataField = 'TELEFONE'
        DataSource = DSCli
        TabOrder = 3
      end
      object DBEdit7: TDBEdit
        Left = 232
        Top = 112
        Width = 199
        Height = 21
        DataField = 'CELULAR'
        DataSource = DSCli
        TabOrder = 4
      end
      object DBEdit8: TDBEdit
        Left = 448
        Top = 112
        Width = 329
        Height = 21
        DataField = 'EMAIL'
        DataSource = DSCli
        TabOrder = 5
      end
      object DBEdit9: TDBEdit
        Left = 24
        Top = 211
        Width = 481
        Height = 21
        DataField = 'VEICULOS'
        DataSource = DSOS
        TabOrder = 6
      end
      object BitBtn5: TBitBtn
        Left = 544
        Top = 208
        Width = 121
        Height = 25
        Caption = 'Adicionar '#225' OS'
        DoubleBuffered = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
          000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
          00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
          F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
          0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
          FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
          FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
          0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
          00333377737FFFFF773333303300000003333337337777777333}
        NumGlyphs = 2
        ParentDoubleBuffered = False
        TabOrder = 7
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Problema'
      ImageIndex = 1
      ExplicitHeight = 470
    end
    object TabSheet3: TTabSheet
      Caption = 'Servi'#231'os'
      ImageIndex = 2
      ExplicitHeight = 470
    end
    object TabSheet4: TTabSheet
      Caption = 'Produtos'
      ImageIndex = 3
      ExplicitHeight = 470
    end
    object TabSheet5: TTabSheet
      Caption = 'Observa'#231'oes'
      ImageIndex = 4
      ExplicitHeight = 470
    end
    object TabSheet6: TTabSheet
      Caption = 'Pagamento'
      ImageIndex = 5
      ExplicitTop = 72
      ExplicitHeight = 341
    end
  end
  object DBEdit1: TDBEdit
    Left = 16
    Top = 104
    Width = 134
    Height = 27
    DataField = 'ID_ORDEM'
    DataSource = DM.DSOS
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 176
    Top = 103
    Width = 134
    Height = 27
    DataField = 'DATA_ ENTRADA'
    DataSource = DM.DSOS
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 328
    Top = 103
    Width = 134
    Height = 27
    DataField = 'PREVISAO_ENTREGA'
    DataSource = DM.DSOS
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object DBEdit4: TDBEdit
    Left = 480
    Top = 103
    Width = 134
    Height = 27
    DataField = 'DATA_FINALIZACAO'
    DataSource = DM.DSOS
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object DSCli: TDataSource
    DataSet = DM.ClientClientes
    Left = 400
    Top = 248
  end
  object DSOS: TDataSource
    DataSet = DM.ClientOS
    Left = 328
    Top = 248
  end
end
