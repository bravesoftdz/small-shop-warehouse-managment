﻿object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 
    #1052#1072#1075#1072#1079#1080#1085'-'#1089#1082#1083#1072#1076'. '#1050#1083#1080#1077#1085#1090#1089#1082#1072#1103' '#1095#1072#1089#1090#1100'. '#1042#1077#1088#1089#1080#1103' 1.2.0.1. '#1057#1073#1086#1088#1082#1072' '#1086#1090' 23.05' +
    '.2012.'
  ClientHeight = 689
  ClientWidth = 1112
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 670
    Width = 1112
    Height = 19
    Panels = <
      item
        Text = 'Client programm | Version 1.2.0.1'
        Width = 180
      end
      item
        Text = #1040#1074#1090#1086#1088' '#1076#1080#1087#1083#1086#1084#1072': '#1053#1086#1074#1072#1082' '#1052'.'#1070'.'
        Width = 220
      end
      item
        Text = #1055#1088#1086#1077#1082#1090': '#1090#1077#1089#1090#1086#1074#1072#1103' '#1074#1077#1088#1089#1080#1103'.'
        Width = 150
      end
      item
        Text = #1042#1089#1077' '#1093#1086#1088#1086#1096#1086'!'
        Width = 50
      end>
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 1112
    Height = 29
    Caption = 'ToolBar1'
    Images = InterfaceDM.BMP24ImageList
    TabOrder = 1
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Caption = 'ToolButton1'
      ImageIndex = 0
      OnClick = ToolButton1Click
    end
    object SaveAllChangesToolButton: TToolButton
      Left = 23
      Top = 0
      Caption = 'SaveAllChangesToolButton'
      Enabled = False
      ImageIndex = 2
      OnClick = SaveAllChangesToolButtonClick
    end
  end
  object CategoryPanelGroup1: TCategoryPanelGroup
    Left = 0
    Top = 29
    Width = 137
    Height = 641
    VertScrollBar.Tracking = True
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = []
    TabOrder = 2
    object Справочники: TCategoryPanel
      Top = 0
      Height = 196
      Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080
      TabOrder = 0
      object ButtonGroup9: TButtonGroup
        Left = 0
        Top = 0
        Width = 133
        Height = 169
        Align = alTop
        BevelInner = bvNone
        BorderStyle = bsNone
        ButtonOptions = [gboFullSize, gboShowCaptions]
        Items = <
          item
            Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090#1099
            OnClick = ButtonGroup9Items0Click
          end
          item
            Caption = #1058#1086#1074#1072#1088#1099
            OnClick = ButtonGroup9Items1Click
          end
          item
            Caption = #1058#1080#1087#1099' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074
            OnClick = ButtonGroup9Items2Click
          end
          item
            Caption = #1058#1080#1087#1099' '#1090#1086#1074#1072#1088#1086#1074
            OnClick = ButtonGroup9Items3Click
          end
          item
            Caption = #1043#1088#1091#1087#1087#1099' '#1090#1086#1074#1072#1088#1086#1074
            OnClick = ButtonGroup9Items4Click
          end
          item
            Caption = #1042#1080#1076#1099' '#1088#1072#1073#1086#1090
            OnClick = ButtonGroup9Items5Click
          end
          item
            Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080
            OnClick = ButtonGroup9Items6Click
          end>
        TabOrder = 0
      end
    end
    object CategoryPanel1: TCategoryPanel
      Top = 196
      Height = 30
      Caption = #1055#1088#1080#1093#1086#1076
      Collapsed = True
      TabOrder = 1
      ExpandedHeight = 81
      object ButtonGroup3: TButtonGroup
        Left = 0
        Top = 0
        Width = 133
        Height = 57
        Align = alTop
        BevelInner = bvNone
        BorderStyle = bsNone
        ButtonOptions = [gboFullSize, gboShowCaptions]
        Items = <
          item
            Caption = #1055#1088#1080#1093#1086#1076' '#1085#1072' '#1089#1082#1083#1072#1076' '
            OnClick = ButtonGroup3Items0Click
          end
          item
            Caption = #1059#1095#1077#1090' '#1086#1089#1090#1072#1090#1082#1086#1074
            OnClick = ButtonGroup3Items1Click
          end>
        TabOrder = 0
      end
    end
    object CategoryPanel2: TCategoryPanel
      Top = 226
      Height = 30
      Caption = #1056#1072#1089#1093#1086#1076
      Collapsed = True
      TabOrder = 2
      ExpandedHeight = 104
      object ButtonGroup2: TButtonGroup
        Left = 0
        Top = 0
        Width = 133
        Height = 73
        Align = alTop
        BevelInner = bvNone
        BorderStyle = bsNone
        ButtonOptions = [gboFullSize, gboShowCaptions]
        Items = <
          item
            Caption = #1055#1088#1086#1076#1072#1078#1072
            OnClick = ButtonGroup2Items0Click
          end
          item
            Caption = #1053#1072' '#1087#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086
            OnClick = ButtonGroup2Items1Click
          end
          item
            Caption = #1057#1087#1080#1089#1072#1085#1080#1077
            OnClick = ButtonGroup2Items2Click
          end>
        TabOrder = 0
      end
    end
    object Итоги: TCategoryPanel
      Top = 256
      Height = 30
      Caption = #1048#1090#1086#1075#1080
      Collapsed = True
      TabOrder = 3
      ExpandedHeight = 80
      object ButtonGroup1: TButtonGroup
        Left = 0
        Top = 0
        Width = 133
        Height = 49
        Align = alTop
        BevelInner = bvNone
        BorderStyle = bsNone
        ButtonOptions = [gboFullSize, gboShowCaptions]
        Items = <
          item
            Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077' '#1089#1082#1083#1072#1076#1072
            OnClick = ButtonGroup1Items0Click
          end
          item
            Caption = #1048#1085#1074#1077#1085#1090#1072#1088#1080#1079#1072#1094#1080#1103
          end>
        TabOrder = 0
      end
    end
    object Аналитика: TCategoryPanel
      Top = 286
      Height = 30
      Caption = #1040#1085#1072#1083#1080#1090#1080#1082#1072
      Collapsed = True
      TabOrder = 4
      ExpandedHeight = 83
      object ButtonGroup4: TButtonGroup
        Left = 0
        Top = 0
        Width = 133
        Height = 57
        Align = alTop
        BevelInner = bvNone
        BorderStyle = bsNone
        ButtonOptions = [gboFullSize, gboShowCaptions]
        Items = <
          item
            Caption = #1044#1074#1080#1078'. '#1087#1086' '#1090#1086#1074#1072#1088#1091
          end
          item
            Caption = #1055#1086' '#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1091
          end>
        TabOrder = 0
      end
    end
    object CategoryPanel3: TCategoryPanel
      Top = 316
      Height = 30
      Caption = #1057#1090#1072#1090#1080#1089#1090#1080#1082#1072
      Collapsed = True
      TabOrder = 5
      ExpandedHeight = 77
      object ButtonGroup5: TButtonGroup
        Left = 0
        Top = 0
        Width = 133
        Height = 57
        Align = alTop
        BevelInner = bvNone
        BorderStyle = bsNone
        ButtonOptions = [gboFullSize, gboShowCaptions]
        Items = <
          item
            Caption = #1044#1080#1072#1075#1088'. '#1076#1086#1093#1086#1076#1085#1086#1089#1090#1080
          end
          item
            Caption = #1043#1088#1072#1092#1080#1082'. '#1087#1086#1089#1090#1072#1074#1086#1082
          end>
        TabOrder = 0
      end
    end
    object CategoryPanel4: TCategoryPanel
      Top = 346
      Height = 146
      Caption = #1060#1091#1085#1082#1094#1080#1080
      TabOrder = 6
      object ButtonGroup10: TButtonGroup
        Left = 0
        Top = 0
        Width = 133
        Height = 121
        Align = alTop
        BevelInner = bvNone
        BorderStyle = bsNone
        ButtonOptions = [gboFullSize, gboShowCaptions]
        Items = <
          item
            Caption = #1057#1082#1083#1072#1076
            OnClick = ButtonGroup10Items0Click
          end
          item
            Caption = #1059#1095#1077#1090' '#1088#1072#1073#1086#1090
            OnClick = ButtonGroup10Items1Click
          end
          item
            Caption = #1055#1083#1072#1085#1080#1088#1086#1074#1072#1085#1080#1077
            OnClick = ButtonGroup10Items2Click
          end
          item
            Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
            OnClick = ButtonGroup10Items3Click
          end
          item
            Caption = #1048#1084#1087#1086#1088#1090' '#1076#1072#1085#1085#1099#1093
            OnClick = ButtonGroup10Items4Click
          end>
        TabOrder = 0
      end
    end
  end
  object Panel1: TPanel
    Left = 137
    Top = 29
    Width = 975
    Height = 641
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 3
    object MainPageControl: TPageControl
      Left = 0
      Top = 0
      Width = 975
      Height = 641
      ActivePage = TabSheet2
      Align = alClient
      MultiLine = True
      TabOrder = 0
      object StorageStateTabSheet: TTabSheet
        Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077' '#1089#1082#1083#1072#1076#1072
        OnShow = StorageStateTabSheetShow
        object DBGrid1: TDBGrid
          Left = 0
          Top = 0
          Width = 967
          Height = 572
          Align = alClient
          Ctl3D = True
          DataSource = DataConnectDM.StorageStateDS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Color = clMenuBar
              Expanded = False
              FieldName = 'PRODUCTID'
              ReadOnly = True
              Title.Caption = 'ID '#1090#1086#1074#1072#1088#1072
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NAME'
              Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
              Width = 300
              Visible = True
            end
            item
              Color = clMenuBar
              Expanded = False
              FieldName = 'INC_QUANT'
              ReadOnly = True
              Title.Caption = #1055#1088#1080#1093'.('#1082#1086#1083'.)'
              Width = 86
              Visible = True
            end
            item
              Color = clBtnFace
              Expanded = False
              FieldName = 'INCOME_PRICE'
              ReadOnly = True
              Title.Caption = #1055#1088#1080#1093'. ('#1094#1077#1085#1072')'
              Width = 95
              Visible = True
            end
            item
              Color = clBtnFace
              Expanded = False
              FieldName = 'INC_SUMM'
              ReadOnly = True
              Title.Caption = #1055#1088#1080#1093'. ('#1089#1091#1084#1084#1072')'
              Width = 96
              Visible = True
            end
            item
              Color = clMenuBar
              Expanded = False
              FieldName = 'OUT_QUANT'
              ReadOnly = True
              Title.Caption = #1056#1072#1089#1093'.('#1082#1086#1083'.)'
              Width = 92
              Visible = True
            end
            item
              Color = clBtnFace
              Expanded = False
              FieldName = 'SALEPRICE'
              ReadOnly = True
              Title.Caption = #1056#1072#1089#1093'. ('#1094#1077#1085#1072')'
              Width = 92
              Visible = True
            end
            item
              Color = clBtnFace
              Expanded = False
              FieldName = 'OUT_SUMM'
              ReadOnly = True
              Title.Caption = #1056#1072#1089#1093'. ('#1089#1091#1084#1084#1072')'
              Width = 95
              Visible = True
            end
            item
              Color = clMenuBar
              Expanded = False
              FieldName = 'STORAGE_QUANT'
              ReadOnly = True
              Title.Caption = #1053#1072' '#1089#1082#1083'.('#1082#1086#1083'.)'
              Width = 98
              Visible = True
            end
            item
              Color = clBtnFace
              Expanded = False
              FieldName = 'STORAGE_SUMM'
              ReadOnly = True
              Title.Caption = #1057#1091#1084#1084#1072' '#1085#1072' '#1089#1082#1083'. ('#1087#1086' '#1094#1077#1085#1077' '#1087#1088#1086#1076#1072#1078#1080')'
              Visible = True
            end>
        end
        object Panel2: TPanel
          Left = 0
          Top = 572
          Width = 967
          Height = 41
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 1
        end
      end
      object TabSheet2: TTabSheet
        Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080
        ImageIndex = 2
        object PageControl2: TPageControl
          Left = 0
          Top = 0
          Width = 967
          Height = 613
          ActivePage = ProductsListTabSheet
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object ProductsListTabSheet: TTabSheet
            Caption = #1058#1086#1074#1072#1088#1099
            object Splitter5: TSplitter
              Left = 0
              Top = 379
              Width = 959
              Height = 5
              Cursor = crVSplit
              Align = alBottom
              Color = clBtnShadow
              ParentColor = False
              ExplicitTop = 357
              ExplicitWidth = 640
            end
            object Panel3: TPanel
              Left = 0
              Top = 384
              Width = 959
              Height = 201
              Align = alBottom
              BevelOuter = bvNone
              TabOrder = 0
              object Splitter3: TSplitter
                Left = 0
                Top = 147
                Width = 959
                Height = 5
                Cursor = crVSplit
                Align = alBottom
                Color = clBtnShadow
                ParentColor = False
                ExplicitTop = 173
                ExplicitWidth = 640
              end
              object Panel21: TPanel
                Left = 0
                Top = 152
                Width = 959
                Height = 49
                Align = alBottom
                BevelOuter = bvNone
                TabOrder = 0
                object Label6: TLabel
                  Left = 200
                  Top = 23
                  Width = 40
                  Height = 13
                  Caption = #1055#1086' '#1090#1080#1087#1091
                end
                object DBLookupComboBox3: TDBLookupComboBox
                  Left = 246
                  Top = 15
                  Width = 195
                  Height = 21
                  KeyField = 'PRODUCTTYPEID'
                  ListField = 'NAME'
                  ListSource = DataConnectDM.PrTypesDS
                  TabOrder = 0
                end
                object BitBtn1: TBitBtn
                  Left = 18
                  Top = 15
                  Width = 167
                  Height = 25
                  Action = DataConnectDM.NewProductDSI
                  Caption = #1053#1086#1074#1099#1081' '#1087#1088#1086#1076#1091#1082#1090'...'
                  DoubleBuffered = True
                  ParentDoubleBuffered = False
                  TabOrder = 1
                end
                object BitBtn11: TBitBtn
                  Left = 464
                  Top = 16
                  Width = 169
                  Height = 25
                  Action = DataConnectDM.MovePrToOldAction
                  Caption = #1059#1073#1088#1072#1090#1100' '#1074' '#1089#1090#1072#1088#1099#1077'...'
                  DoubleBuffered = True
                  ParentDoubleBuffered = False
                  TabOrder = 2
                end
              end
              object Panel22: TPanel
                Left = 0
                Top = 0
                Width = 959
                Height = 147
                Align = alClient
                BevelOuter = bvNone
                TabOrder = 1
                object Splitter4: TSplitter
                  Left = 240
                  Top = 0
                  Width = 5
                  Height = 147
                  Color = clBtnShadow
                  ParentColor = False
                  ExplicitLeft = 238
                  ExplicitHeight = 171
                end
                object ProductViewDBImg: TDBImage
                  Left = 0
                  Top = 0
                  Width = 240
                  Height = 147
                  Align = alLeft
                  DataField = 'VIEWIMAGE'
                  DataSource = DataConnectDM.ProductsDS
                  TabOrder = 0
                end
                object Panel23: TPanel
                  Left = 245
                  Top = 0
                  Width = 714
                  Height = 147
                  Align = alClient
                  BevelOuter = bvNone
                  TabOrder = 1
                  object Panel30: TPanel
                    Left = 219
                    Top = 0
                    Width = 206
                    Height = 147
                    Align = alLeft
                    BevelOuter = bvNone
                    TabOrder = 0
                    object GroupBox3: TGroupBox
                      Left = 0
                      Top = 0
                      Width = 206
                      Height = 147
                      Align = alClient
                      Caption = #1042#1080#1076' '#1080' '#1075#1088#1091#1087#1087#1072' '#1090#1086#1074#1072#1088#1086#1074
                      TabOrder = 0
                      object Label18: TLabel
                        Left = 6
                        Top = 21
                        Width = 128
                        Height = 13
                        Caption = #1057#1074#1103#1079#1072#1090#1100' '#1089' '#1090#1080#1087#1086#1084' '#1090#1086#1074#1072#1088#1086#1074
                      end
                      object Label19: TLabel
                        Left = 6
                        Top = 64
                        Width = 94
                        Height = 13
                        Caption = #1057#1074#1103#1079#1072#1090#1100' '#1089' '#1075#1088#1091#1087#1087#1086#1081
                      end
                      object SpeedButton1: TSpeedButton
                        Left = 169
                        Top = 36
                        Width = 30
                        Height = 23
                        Action = DataConnectDM.LinkProductToTypeAction
                      end
                      object SpeedButton2: TSpeedButton
                        Left = 169
                        Top = 82
                        Width = 30
                        Height = 23
                        Action = DataConnectDM.LinkProductToGroupAction
                      end
                      object DBLookupComboBox5: TDBLookupComboBox
                        Left = 6
                        Top = 37
                        Width = 157
                        Height = 21
                        KeyField = 'PRODUCTTYPEID'
                        ListField = 'NAME'
                        ListSource = DataConnectDM.PrTypesDS
                        TabOrder = 0
                      end
                      object DBLookupComboBox6: TDBLookupComboBox
                        Left = 6
                        Top = 83
                        Width = 157
                        Height = 21
                        KeyField = 'PRODUCTGROUPID'
                        ListField = 'GROUPNAME'
                        ListSource = DataConnectDM.PrGroupsDS
                        TabOrder = 1
                      end
                    end
                  end
                  object SizesGroupBox: TGroupBox
                    Left = 0
                    Top = 0
                    Width = 219
                    Height = 147
                    Align = alLeft
                    Caption = #1056#1072#1079#1084#1077#1088#1099
                    TabOrder = 1
                    object Panel24: TPanel
                      Left = 2
                      Top = 15
                      Width = 215
                      Height = 130
                      Align = alClient
                      BevelOuter = bvNone
                      TabOrder = 0
                      object Label14: TLabel
                        Left = 135
                        Top = 49
                        Width = 45
                        Height = 13
                        Caption = #1058#1086#1083#1097#1080#1085#1072
                      end
                      object Label12: TLabel
                        Left = 135
                        Top = 6
                        Width = 76
                        Height = 13
                        Caption = #1050#1086#1083'-'#1074#1086' '#1074' '#1077#1076'-'#1094#1077
                      end
                      object Label11: TLabel
                        Left = 6
                        Top = 3
                        Width = 93
                        Height = 13
                        Caption = #1045#1076#1080#1085#1080#1094#1072' '#1087#1086#1089#1090#1072#1074#1082#1080
                      end
                      object Label15: TLabel
                        Left = 6
                        Top = 49
                        Width = 32
                        Height = 13
                        Caption = #1044#1083#1080#1085#1072
                      end
                      object Label13: TLabel
                        Left = 72
                        Top = 49
                        Width = 40
                        Height = 13
                        Caption = #1064#1080#1088#1080#1085#1072
                      end
                      object BitBtn10: TBitBtn
                        Left = 6
                        Top = 95
                        Width = 203
                        Height = 25
                        Action = DataConnectDM.ProductOpenPictAction
                        Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1088#1080#1089#1091#1085#1086#1082'...'
                        DoubleBuffered = True
                        ParentDoubleBuffered = False
                        TabOrder = 0
                      end
                      object DBEdit4: TDBEdit
                        Left = 135
                        Top = 68
                        Width = 74
                        Height = 21
                        DataField = 'UNITWEIGTH'
                        DataSource = DataConnectDM.ProductsDS
                        TabOrder = 1
                      end
                      object DBEdit5: TDBEdit
                        Left = 135
                        Top = 22
                        Width = 74
                        Height = 21
                        DataField = 'QUANTITYINUNIT'
                        DataSource = DataConnectDM.ProductsDS
                        TabOrder = 2
                      end
                      object DBEdit1: TDBEdit
                        Left = 6
                        Top = 22
                        Width = 123
                        Height = 21
                        DataField = 'UNITNAME'
                        DataSource = DataConnectDM.ProductsDS
                        TabOrder = 3
                      end
                      object DBEdit3: TDBEdit
                        Left = 72
                        Top = 68
                        Width = 57
                        Height = 21
                        DataField = 'UNITWIDTH'
                        DataSource = DataConnectDM.ProductsDS
                        TabOrder = 4
                      end
                      object DBEdit2: TDBEdit
                        Left = 6
                        Top = 68
                        Width = 60
                        Height = 21
                        DataField = 'UNITLENGTH'
                        DataSource = DataConnectDM.ProductsDS
                        TabOrder = 5
                      end
                    end
                  end
                  object GroupBox4: TGroupBox
                    Left = 425
                    Top = 0
                    Width = 185
                    Height = 147
                    Align = alLeft
                    Caption = #1054#1087#1080#1089#1072#1085#1080#1077
                    TabOrder = 2
                    object DBMemo1: TDBMemo
                      Left = 2
                      Top = 15
                      Width = 181
                      Height = 130
                      Align = alClient
                      Ctl3D = False
                      DataField = 'DESCRIPTION'
                      DataSource = DataConnectDM.ProductsDS
                      ParentCtl3D = False
                      TabOrder = 0
                    end
                  end
                end
              end
            end
            object DBGrid2: TDBGrid
              Left = 0
              Top = 0
              Width = 959
              Height = 379
              Align = alClient
              DataSource = DataConnectDM.ProductsDS
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'PRODUCTID'
                  Title.Caption = 'ID'
                  Width = 40
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NAME'
                  Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
                  Width = 230
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'SALEPRICE'
                  Title.Caption = #1062#1077#1085#1072' '#1087#1088#1086#1076#1072#1078#1080
                  Width = 90
                  Visible = True
                end
                item
                  Alignment = taRightJustify
                  Expanded = False
                  FieldName = 'MEASURE'
                  Title.Caption = #1045#1076'. '#1080#1079#1084#1077#1088#1077#1085#1080#1103
                  Width = 80
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'INCOME_PRICE'
                  Title.Caption = #1062#1077#1085#1072' '#1087#1088#1080#1093#1086#1076#1072
                  Width = 90
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PRTYPENAME'
                  Title.Caption = #1042#1080#1076' '#1090#1086#1074#1072#1088#1072
                  Width = 80
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'QISSQUARE'
                  Title.Caption = #1050#1086#1083'-'#1074#1086'='#1087#1083#1086#1097#1072#1076#1100
                  Visible = False
                end
                item
                  Expanded = False
                  FieldName = 'PGROUPNAME'
                  Title.Caption = #1043#1088#1091#1087#1087#1072' '#1090#1086#1074#1072#1088#1072
                  Width = 110
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'MANUFACT'
                  Title.Caption = #1055#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1100
                  Width = 120
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DESCRIPTION'
                  Title.Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '#1090#1086#1074#1072#1088#1072
                  Width = 500
                  Visible = True
                end>
            end
          end
          object KontragentsTabSheet: TTabSheet
            Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090#1099
            ImageIndex = 1
            object Panel4: TPanel
              Left = 0
              Top = 550
              Width = 959
              Height = 35
              Align = alBottom
              BevelOuter = bvNone
              TabOrder = 0
              object BitBtn2: TBitBtn
                Left = 10
                Top = 6
                Width = 167
                Height = 25
                Action = DataConnectDM.NewKontragentDSI
                Caption = #1053#1086#1074#1099#1081' '#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090'...'
                DoubleBuffered = True
                ParentDoubleBuffered = False
                TabOrder = 0
              end
            end
            object DBGrid4: TDBGrid
              Left = 0
              Top = 0
              Width = 959
              Height = 550
              Align = alClient
              DataSource = DataConnectDM.KontragentDS
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'KONTRAGENTID'
                  Title.Caption = 'ID'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'FIRSTNAME'
                  Title.Caption = #1048#1084#1103
                  Width = 100
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'LASTNAME'
                  Title.Caption = #1060#1072#1084#1080#1083#1080#1103
                  Width = 160
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'SURNAME'
                  Title.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
                  Width = 150
                  Visible = True
                end>
            end
          end
          object OrderTypesTabSheet: TTabSheet
            Caption = #1058#1080#1087#1099' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074
            ImageIndex = 2
            object Panel5: TPanel
              Left = 0
              Top = 550
              Width = 959
              Height = 35
              Align = alBottom
              BevelOuter = bvNone
              TabOrder = 0
              object BitBtn3: TBitBtn
                Left = 10
                Top = 6
                Width = 167
                Height = 25
                Action = DataConnectDM.NewOrderTypeDSI
                Caption = #1053#1086#1074#1099#1081' '#1090#1080#1087'...'
                DoubleBuffered = True
                ParentDoubleBuffered = False
                TabOrder = 0
              end
            end
            object DBGrid3: TDBGrid
              Left = 0
              Top = 0
              Width = 959
              Height = 550
              Align = alClient
              DataSource = DataConnectDM.OrderTypesDS
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              PopupMenu = InterfaceDM.OrderTypesPopupMenu
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              Columns = <
                item
                  Color = clBtnFace
                  Expanded = False
                  FieldName = 'ORDERTYPEID'
                  ReadOnly = True
                  Title.Caption = 'ID'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NAME'
                  Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
                  Width = 310
                  Visible = True
                end
                item
                  Color = clGrayText
                  Expanded = False
                  FieldName = 'ISINCOME'
                  Title.Caption = #1055#1088#1080#1093'.'
                  Width = 40
                  Visible = True
                end
                item
                  Color = clGrayText
                  Expanded = False
                  FieldName = 'ISOUTCOME'
                  Title.Caption = #1056#1072#1089#1093'.'
                  Width = 40
                  Visible = True
                end>
            end
          end
          object ProductTypesTabSheet: TTabSheet
            Caption = #1058#1080#1087#1099' '#1090#1086#1074#1072#1088#1086#1074
            ImageIndex = 3
            object DBGrid9: TDBGrid
              Left = 0
              Top = 0
              Width = 959
              Height = 550
              Align = alClient
              DataSource = DataConnectDM.PrTypesDS
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              Columns = <
                item
                  Color = clBtnFace
                  Expanded = False
                  FieldName = 'PRODUCTTYPEID'
                  ReadOnly = True
                  Title.Caption = 'ID'
                  Width = 40
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NAME'
                  Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
                  Width = 350
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ISMATERIAL'
                  Title.Caption = '='#1052#1072#1090#1077#1088#1080#1072#1083
                  Width = 65
                  Visible = True
                end
                item
                  Alignment = taRightJustify
                  Expanded = False
                  FieldName = 'ISMANUFACTURED'
                  Title.Caption = '='#1048#1079#1076#1077#1083#1080#1077#1084
                  Width = 66
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ISINSTRUMENT'
                  Title.Caption = '='#1048#1085#1089#1090#1088#1091#1084#1077#1085#1090
                  Visible = True
                end>
            end
            object Panel20: TPanel
              Left = 0
              Top = 550
              Width = 959
              Height = 35
              Align = alBottom
              BevelOuter = bvNone
              TabOrder = 1
              object BitBtn9: TBitBtn
                Left = 10
                Top = 6
                Width = 167
                Height = 25
                Action = DataConnectDM.NewProductTypeDSI
                Caption = #1053#1086#1074#1099#1081' '#1090#1080#1087'...'
                DoubleBuffered = True
                ParentDoubleBuffered = False
                TabOrder = 0
              end
            end
          end
          object ProductGroupsTabSheet: TTabSheet
            Caption = #1043#1088#1091#1087#1087#1099' '#1090#1086#1074#1072#1088#1086#1074
            ImageIndex = 4
            object Panel26: TPanel
              Left = 0
              Top = 550
              Width = 959
              Height = 35
              Align = alBottom
              BevelOuter = bvNone
              TabOrder = 0
              object Label20: TLabel
                Left = 197
                Top = 16
                Width = 72
                Height = 13
                Caption = #1042' '#1090#1080#1087' '#1090#1086#1074#1072#1088#1086#1074
              end
              object BitBtn12: TBitBtn
                Left = 10
                Top = 6
                Width = 167
                Height = 25
                Action = DataConnectDM.NewPrGroupAction
                Caption = '+'#1043#1088#1091#1087#1087#1072' '#1090#1086#1074#1072#1088#1086#1074'...'
                DoubleBuffered = True
                ParentDoubleBuffered = False
                TabOrder = 0
              end
              object DBLookupComboBox4: TDBLookupComboBox
                Left = 275
                Top = 8
                Width = 209
                Height = 21
                KeyField = 'PRODUCTTYPEID'
                ListField = 'NAME'
                ListSource = DataConnectDM.PrTypesDS
                TabOrder = 1
              end
            end
            object DBGrid10: TDBGrid
              Left = 0
              Top = 0
              Width = 959
              Height = 550
              Align = alClient
              DataSource = DataConnectDM.PrGroupsDS
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              Columns = <
                item
                  Color = clBtnFace
                  Expanded = False
                  FieldName = 'PRODUCTGROUPID'
                  ReadOnly = True
                  Title.Caption = 'ID'
                  Width = 50
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'GROUPNAME'
                  Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
                  Width = 350
                  Visible = True
                end
                item
                  Color = clInfoBk
                  Expanded = False
                  FieldName = 'NAME'
                  ReadOnly = True
                  Title.Caption = #1054#1090#1085#1086#1089'. '#1082' '#1090#1080#1087#1091
                  Width = 200
                  Visible = True
                end>
            end
          end
          object JobTypesTabSheet: TTabSheet
            Caption = #1042#1080#1076#1099' '#1088#1072#1073#1086#1090
            ImageIndex = 5
            object Panel28: TPanel
              Left = 0
              Top = 550
              Width = 959
              Height = 35
              Align = alBottom
              BevelOuter = bvNone
              TabOrder = 0
              object BitBtn14: TBitBtn
                Left = 10
                Top = 6
                Width = 167
                Height = 25
                Action = DataConnectDM.NewJobTypeDSI
                Caption = '+'#1042#1080#1076' '#1088#1072#1073#1086#1090'...'
                DoubleBuffered = True
                ParentDoubleBuffered = False
                TabOrder = 0
              end
            end
            object DBGrid12: TDBGrid
              Left = 0
              Top = 0
              Width = 959
              Height = 550
              Align = alClient
              DataSource = DataConnectDM.JobTypesDS
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              Columns = <
                item
                  Color = clBtnFace
                  Expanded = False
                  FieldName = 'JOBTYPEID'
                  ReadOnly = True
                  Title.Caption = 'ID'
                  Width = 40
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'JOBTYPENAME'
                  Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
                  Width = 400
                  Visible = True
                end>
            end
          end
          object UsersAccountsTabSheet: TTabSheet
            Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080
            ImageIndex = 6
            object Panel29: TPanel
              Left = 0
              Top = 550
              Width = 959
              Height = 35
              Align = alBottom
              BevelOuter = bvNone
              TabOrder = 0
              object BitBtn15: TBitBtn
                Left = 10
                Top = 6
                Width = 167
                Height = 25
                Action = DataConnectDM.NewPersonDSI
                Caption = '+'#1059#1095'. '#1079#1072#1087#1080#1089#1100' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
                DoubleBuffered = True
                ParentDoubleBuffered = False
                TabOrder = 0
              end
            end
            object DBGrid13: TDBGrid
              Left = 0
              Top = 0
              Width = 959
              Height = 550
              Align = alClient
              DataSource = DataConnectDM.PersonsDS
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              Columns = <
                item
                  Color = clBtnFace
                  Expanded = False
                  FieldName = 'PERSONID'
                  ReadOnly = True
                  Title.Caption = 'ID'
                  Width = 40
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'FIRSTNAME'
                  Title.Caption = #1060#1072#1084#1080#1083#1080#1103
                  Width = 150
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'LASTNAME'
                  Title.Caption = #1048#1084#1103
                  Width = 100
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'SURNAME'
                  Title.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
                  Width = 150
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'LOGIN'
                  Title.Caption = #1051#1086#1075#1080#1085
                  Width = 80
                  Visible = True
                end>
            end
          end
          object TabSheet1: TTabSheet
            Caption = #1055#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1080
            ImageIndex = 7
          end
        end
      end
      object DocsTabSheet: TTabSheet
        Caption = #1044#1086#1082#1091#1084#1077#1085#1090#1099
        ImageIndex = 3
        OnShow = DocsTabSheetShow
        object Panel6: TPanel
          Left = 0
          Top = 0
          Width = 967
          Height = 36
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Label1: TLabel
            Left = 10
            Top = 16
            Width = 87
            Height = 13
            Caption = #1042#1080#1076#1099' '#1085#1072#1082#1083#1072#1076#1085#1099#1093
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 128
            Top = 9
            Width = 369
            Height = 21
            KeyField = 'ORDERTYPEID'
            ListField = 'NAME'
            ListFieldIndex = 1
            ListSource = DataConnectDM.OrderTypesDS
            TabOrder = 0
          end
        end
        object Panel7: TPanel
          Left = 0
          Top = 36
          Width = 967
          Height = 577
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          object Splitter1: TSplitter
            Left = 0
            Top = 176
            Width = 967
            Height = 8
            Cursor = crVSplit
            Align = alTop
            Color = clMedGray
            ParentColor = False
            ExplicitWidth = 509
          end
          object Panel8: TPanel
            Left = 0
            Top = 184
            Width = 967
            Height = 393
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object DBGrid6: TDBGrid
              Left = 0
              Top = 0
              Width = 967
              Height = 248
              Align = alClient
              DataSource = DataConnectDM.OrderItemsDS
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              Columns = <
                item
                  Color = clMenuBar
                  Expanded = False
                  FieldName = 'ORDERITEMID'
                  ReadOnly = True
                  Title.Caption = 'ID '#1087#1086#1079#1080#1094#1080#1080
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PRODUCTNAME'
                  Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
                  Width = 210
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ITEM_COMMENT'
                  Title.Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081' ('#1076#1077#1092#1077#1082#1090' '#1080' '#1090'.'#1076'.)'
                  Width = 160
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'QUANTITY'
                  Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
                  Width = 64
                  Visible = True
                end
                item
                  Color = clInfoBk
                  Expanded = False
                  FieldName = 'MEASURE'
                  ReadOnly = True
                  Title.Caption = #1045#1076'. '#1080#1079#1084'.'
                  Width = 50
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PRICE'
                  Title.Caption = #1062#1077#1085#1072
                  Width = 64
                  Visible = True
                end
                item
                  Color = clMenuBar
                  Expanded = False
                  FieldName = 'ITEM_SUMM'
                  ReadOnly = True
                  Title.Caption = #1057#1091#1084#1084#1072
                  Width = 64
                  Visible = True
                end>
            end
            object Panel11: TPanel
              Left = 0
              Top = 359
              Width = 967
              Height = 34
              Align = alBottom
              BevelOuter = bvNone
              TabOrder = 1
              object Panel14: TPanel
                Left = 369
                Top = 0
                Width = 598
                Height = 34
                Align = alRight
                BevelOuter = bvNone
                TabOrder = 0
                object ProductsSearchComboBox: TComboBox
                  Left = 183
                  Top = 6
                  Width = 219
                  Height = 21
                  AutoComplete = False
                  ItemHeight = 13
                  TabOrder = 0
                  OnCloseUp = ProductsSearchComboBoxCloseUp
                  OnKeyUp = ProductsSearchComboBoxKeyUp
                end
                object BitBtn5: TBitBtn
                  Left = 10
                  Top = 6
                  Width = 167
                  Height = 25
                  Action = DataConnectDM.NewOrderItemAction
                  Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1087#1086#1079#1080#1094#1080#1102'...'
                  DoubleBuffered = True
                  ParentDoubleBuffered = False
                  TabOrder = 1
                end
                object BitBtn8: TBitBtn
                  Left = 408
                  Top = 6
                  Width = 185
                  Height = 25
                  Action = DataConnectDM.DeleteOrderItemAction
                  Caption = #1059#1076#1072#1083#1080#1090#1100' '#1087#1086#1079#1080#1094#1080#1102' '#1076#1086#1082#1091#1084#1077#1085#1090#1072'...'
                  DoubleBuffered = True
                  ParentDoubleBuffered = False
                  TabOrder = 2
                end
              end
            end
            object Panel25: TPanel
              Left = 0
              Top = 248
              Width = 967
              Height = 111
              Align = alBottom
              BevelOuter = bvNone
              TabOrder = 2
              object GroupBox1: TGroupBox
                Left = 0
                Top = 0
                Width = 177
                Height = 111
                Align = alLeft
                Caption = #1057#1095#1080#1090#1072#1090#1100' '#1082#1072#1082' '#1087#1083#1086#1097#1072#1076#1100
                TabOrder = 0
                object Длина: TLabel
                  Left = 10
                  Top = 21
                  Width = 32
                  Height = 13
                  Caption = #1044#1083#1080#1085#1072
                end
                object Ширина: TLabel
                  Left = 10
                  Top = 67
                  Width = 40
                  Height = 13
                  Caption = #1064#1080#1088#1080#1085#1072
                end
                object DBEdit6: TDBEdit
                  Left = 10
                  Top = 40
                  Width = 121
                  Height = 21
                  Hint = 
                    #1044#1083#1080#1085#1072' '#1076#1083#1103' '#1087#1086#1076#1089#1095#1077#1090#1072' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1072' '#1082#1072#1082' '#1087#1083#1086#1097#1072#1076#1080', '#1083#1080#1073#1086' '#1087#1088#1086#1089#1090#1086' '#1086#1090#1084#1077#1090#1082#1072' '#1076 +
                    #1083#1080#1085#1099' '#1084#1072#1090#1077#1088#1080#1072#1083#1072
                  CustomHint = InterfaceDM.BalloonHint
                  DataField = 'UNITLENGTH'
                  DataSource = DataConnectDM.OrderItemsDS
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 0
                end
                object DBEdit7: TDBEdit
                  Left = 10
                  Top = 84
                  Width = 121
                  Height = 21
                  DataField = 'UNITWIDTH'
                  DataSource = DataConnectDM.OrderItemsDS
                  TabOrder = 1
                end
              end
              object GroupBox2: TGroupBox
                Left = 177
                Top = 0
                Width = 184
                Height = 111
                Align = alLeft
                Caption = #1057#1095#1080#1090#1072#1090#1100' '#1087#1086' '#1082#1086#1083'-'#1074#1091' '#1077#1076#1080#1085#1080#1094
                TabOrder = 1
                object Label16: TLabel
                  Left = 16
                  Top = 49
                  Width = 70
                  Height = 13
                  Caption = #1063#1080#1089#1083#1086' '#1077#1076#1080#1085#1080#1094
                end
                object DBText6: TDBText
                  Left = 92
                  Top = 49
                  Width = 77
                  Height = 17
                  DataField = 'UNITNAME'
                  DataSource = DataConnectDM.OrderItemsDS
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object DBText7: TDBText
                  Left = 118
                  Top = 26
                  Width = 145
                  Height = 17
                  DataField = 'QUANTITYINUNIT'
                  DataSource = DataConnectDM.OrderItemsDS
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object DBText8: TDBText
                  Left = 13
                  Top = 26
                  Width = 65
                  Height = 17
                  DataField = 'MEASURE'
                  DataSource = DataConnectDM.OrderItemsDS
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label17: TLabel
                  Left = 64
                  Top = 26
                  Width = 56
                  Height = 13
                  Caption = #1074' '#1077#1076#1080#1085#1080#1094#1077':'
                end
                object DBEdit8: TDBEdit
                  Left = 16
                  Top = 68
                  Width = 145
                  Height = 21
                  DataField = 'UNITSQUANTITY'
                  DataSource = DataConnectDM.OrderItemsDS
                  TabOrder = 0
                end
              end
            end
          end
          object Panel9: TPanel
            Left = 0
            Top = 0
            Width = 967
            Height = 176
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 1
            object DBGrid5: TDBGrid
              Left = 0
              Top = 0
              Width = 967
              Height = 140
              Align = alClient
              DataSource = DataConnectDM.OrderDocsDS
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
              ParentFont = False
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              Columns = <
                item
                  Color = clMenuBar
                  Expanded = False
                  FieldName = 'ORDERID'
                  ReadOnly = True
                  Title.Caption = 'ID '#1085#1072#1082#1083'.'
                  Width = 50
                  Visible = True
                end
                item
                  Color = clMenu
                  Expanded = False
                  FieldName = 'NAME'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clDefault
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ReadOnly = True
                  Title.Caption = #1058#1080#1087
                  Width = 135
                  Visible = True
                end
                item
                  Color = clInfoBk
                  Expanded = False
                  FieldName = 'ADDDT'
                  ReadOnly = True
                  Title.Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1072
                  Width = 150
                  Visible = True
                end
                item
                  Color = clMenu
                  Expanded = False
                  FieldName = 'FULLNAME'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clDefault
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Title.Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090' ('#1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103', '#1060#1048#1054')'
                  Width = 250
                  Visible = True
                end>
            end
            object Panel10: TPanel
              Left = 0
              Top = 140
              Width = 967
              Height = 36
              Align = alBottom
              BevelOuter = bvNone
              TabOrder = 1
              object Panel15: TPanel
                Left = 351
                Top = 0
                Width = 616
                Height = 36
                Align = alRight
                TabOrder = 0
                object DBLookupComboBox2: TDBLookupComboBox
                  Left = 191
                  Top = 6
                  Width = 229
                  Height = 21
                  KeyField = 'KONTRAGENTID'
                  ListField = 'FULLNAME'
                  ListSource = DataConnectDM.ClientListDS
                  TabOrder = 0
                end
                object BitBtn4: TBitBtn
                  Left = 18
                  Top = 6
                  Width = 167
                  Height = 25
                  Action = DataConnectDM.NewOrderAction
                  Caption = #1044#1086#1073'. '#1087#1086' '#1082#1083#1080#1077#1085#1090#1091'--->>>'
                  DoubleBuffered = True
                  ParentDoubleBuffered = False
                  TabOrder = 1
                end
                object BitBtn7: TBitBtn
                  Left = 426
                  Top = 6
                  Width = 183
                  Height = 25
                  Action = DataConnectDM.DeleteOrderAction
                  Caption = #1059#1076#1072#1083#1080#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090'...'
                  DoubleBuffered = True
                  ParentDoubleBuffered = False
                  TabOrder = 2
                end
              end
            end
          end
        end
      end
      object SettingsTabSheet: TTabSheet
        Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1089#1080#1089#1090#1077#1084#1099
        ImageIndex = 3
        object Splitter2: TSplitter
          Left = 425
          Top = 0
          Height = 613
          Color = clMedGray
          ParentColor = False
          ExplicitLeft = 280
          ExplicitTop = 288
          ExplicitHeight = 100
        end
        object Panel12: TPanel
          Left = 0
          Top = 0
          Width = 425
          Height = 613
          Align = alLeft
          TabOrder = 0
          object DBGrid7: TDBGrid
            Left = 1
            Top = 1
            Width = 423
            Height = 611
            Align = alClient
            DataSource = DataConnectDM.SysPrmsDS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'NAME'
                Title.Caption = #1055#1072#1088#1072#1084#1077#1090#1088
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'INTVAL'
                Title.Caption = #1062#1077#1083#1086#1095#1080#1089#1083'. '#1079#1085#1072#1095#1077#1085#1080#1077
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FLOATVAL'
                Title.Caption = #1044#1088#1086#1073#1085'. '#1079#1085#1072#1095#1077#1085#1080#1077
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'STRVAL'
                Title.Caption = #1057#1090#1088#1086#1082#1086#1074#1086#1077' '#1079#1085#1072#1095#1077#1085#1080#1077
                Width = 170
                Visible = True
              end>
          end
        end
        object Panel13: TPanel
          Left = 428
          Top = 0
          Width = 157
          Height = 613
          Align = alLeft
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 1
          object BitBtn6: TBitBtn
            Left = 6
            Top = 11
            Width = 139
            Height = 25
            Action = DataConnectDM.NewSysParamDSI
            Caption = #1053#1086#1074#1099#1081' '#1087#1072#1088#1072#1084#1077#1090#1088'...'
            DoubleBuffered = True
            ParentDoubleBuffered = False
            TabOrder = 0
          end
        end
      end
      object SaleTabSheet: TTabSheet
        Caption = #1055#1088#1086#1076#1072#1078#1072
        ImageIndex = 4
        object Panel16: TPanel
          AlignWithMargins = True
          Left = 5
          Top = 53
          Width = 957
          Height = 81
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alTop
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 0
          object Label2: TLabel
            Left = 24
            Top = 13
            Width = 129
            Height = 13
            Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1090#1086#1074#1072#1088#1072
            Color = clBlue
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Label3: TLabel
            Left = 367
            Top = 13
            Width = 68
            Height = 13
            Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
            Color = clRed
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Label4: TLabel
            Left = 24
            Top = 59
            Width = 85
            Height = 13
            Caption = #1045#1076'. '#1080#1079#1084#1077#1088#1077#1085#1080#1103':'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label5: TLabel
            Left = 184
            Top = 59
            Width = 70
            Height = 13
            Caption = #1062#1077#1085#1072' ('#1088#1091#1073'.):'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText1: TDBText
            Left = 260
            Top = 59
            Width = 85
            Height = 17
            DataField = 'SALEPRICE'
            DataSource = DataConnectDM.ProductSearchDS
          end
          object DBText2: TDBText
            Left = 115
            Top = 59
            Width = 65
            Height = 17
            DataField = 'MEASURE'
            DataSource = DataConnectDM.ProductSearchDS
          end
          object SaleProductSearchComboBox: TComboBox
            Left = 24
            Top = 32
            Width = 321
            Height = 21
            AutoComplete = False
            ItemHeight = 13
            TabOrder = 0
            OnCloseUp = SaleProductSearchComboBoxCloseUp
            OnKeyUp = SaleProductSearchComboBoxKeyUp
            OnSelect = SaleProductSearchComboBoxSelect
          end
          object ButtonGroup7: TButtonGroup
            Left = 528
            Top = 10
            Width = 105
            Height = 73
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            ButtonHeight = 33
            ButtonWidth = 107
            ButtonOptions = [gboFullSize, gboShowCaptions]
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            Items = <
              item
                Action = DataConnectDM.NewSaleItemAction
              end
              item
                Caption = '  '#1059#1076#1072#1083#1080#1090#1100'...'
              end>
            TabOrder = 2
            Visible = False
          end
          object SaleQuantEdit: TEdit
            Left = 367
            Top = 32
            Width = 138
            Height = 21
            TabOrder = 1
            Text = '1'
            OnKeyUp = SaleQuantEditKeyUp
          end
        end
        object Panel17: TPanel
          AlignWithMargins = True
          Left = 5
          Top = 5
          Width = 957
          Height = 38
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alTop
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 1
          object DBText3: TDBText
            Left = 278
            Top = 17
            Width = 83
            Height = 17
            DataField = 'ORDERID'
            DataSource = DataConnectDM.LastSalesOrdersDS
          end
          object DBText4: TDBText
            Left = 390
            Top = 17
            Width = 107
            Height = 17
            DataField = 'ADDDT'
            DataSource = DataConnectDM.LastSalesOrdersDS
          end
          object Label9: TLabel
            Left = 278
            Top = 4
            Width = 68
            Height = 13
            Caption = #8470' '#1090#1077#1082#1091#1097#1077#1081
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label10: TLabel
            Left = 390
            Top = 4
            Width = 66
            Height = 13
            Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1072
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object ButtonGroup6: TButtonGroup
            AlignWithMargins = True
            Left = 821
            Top = 2
            Width = 134
            Height = 34
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Align = alRight
            BorderStyle = bsNone
            ButtonHeight = 33
            ButtonWidth = 130
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            Items = <
              item
                Caption = '      '#1054#1090#1084#1077#1085#1072
              end>
            TabOrder = 0
            Visible = False
          end
          object ButtonGroup8: TButtonGroup
            AlignWithMargins = True
            Left = 2
            Top = 2
            Width = 271
            Height = 34
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Align = alLeft
            BorderStyle = bsNone
            ButtonHeight = 33
            ButtonWidth = 130
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            Items = <
              item
                Action = DataConnectDM.NewSaleAction
              end
              item
                Caption = '    '#1047#1072#1074#1077#1088#1096#1080#1090#1100
                OnClick = ButtonGroup8Items1Click
              end>
            TabOrder = 1
          end
        end
        object Panel18: TPanel
          AlignWithMargins = True
          Left = 5
          Top = 144
          Width = 957
          Height = 413
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 2
          object DBGrid8: TDBGrid
            Left = 0
            Top = 0
            Width = 957
            Height = 413
            Align = alClient
            Ctl3D = True
            DataSource = DataConnectDM.SaleOrderItemsDS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Color = clMenuBar
                Expanded = False
                FieldName = 'ORDERITEMID'
                ReadOnly = True
                Title.Caption = 'ID '#1087#1086#1079#1080#1094#1080#1080
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRODUCTNAME'
                ReadOnly = True
                Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
                Width = 300
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QUANTITY'
                ReadOnly = True
                Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRICE'
                ReadOnly = True
                Title.Caption = #1062#1077#1085#1072
                Width = 70
                Visible = True
              end
              item
                Color = clMenuBar
                Expanded = False
                FieldName = 'ITEM_SUMM'
                ReadOnly = True
                Title.Caption = #1048#1090#1086#1075#1086
                Width = 70
                Visible = True
              end>
          end
        end
        object Panel19: TPanel
          AlignWithMargins = True
          Left = 5
          Top = 567
          Width = 957
          Height = 41
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alBottom
          BevelOuter = bvNone
          Color = clInactiveBorder
          ParentBackground = False
          TabOrder = 3
          object Label7: TLabel
            Left = 8
            Top = 16
            Width = 141
            Height = 16
            Caption = #1042#1089#1077#1075#1086' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1081':'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label8: TLabel
            Left = 367
            Top = 16
            Width = 83
            Height = 16
            Caption = #1048#1090#1086#1075#1086' '#1074#1089#1077#1075#1086':'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText5: TDBText
            Left = 464
            Top = 16
            Width = 161
            Height = 17
            DataField = 'ORDERSUM'
            DataSource = DataConnectDM.LastSalesOrdersDS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
        end
      end
      object DataImportTabSheet: TTabSheet
        Caption = #1048#1084#1087#1086#1088#1090' '#1076#1072#1085#1085#1099#1093
        ImageIndex = 5
        object Panel27: TPanel
          Left = 0
          Top = 0
          Width = 967
          Height = 44
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object BitBtn13: TBitBtn
            Left = 2
            Top = 8
            Width = 175
            Height = 25
            Action = DataConnectDM.ImportDBFAction
            Caption = #1048#1084#1087#1086#1088#1090#1080#1088#1086#1074#1072#1090#1100' '#1080#1079' DBF...'
            DoubleBuffered = True
            ParentDoubleBuffered = False
            TabOrder = 0
          end
          object BitBtn16: TBitBtn
            Left = 200
            Top = 8
            Width = 233
            Height = 25
            Action = DataConnectDM.SaveImpToTMPFileAction
            Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' DBF '#1074#1086' '#1074#1088#1077#1084#1077#1085#1085#1099#1081' '#1092#1086#1088#1084#1072#1090'...'
            DoubleBuffered = True
            ParentDoubleBuffered = False
            TabOrder = 1
          end
          object BitBtn17: TBitBtn
            Left = 456
            Top = 8
            Width = 217
            Height = 25
            Action = DataConnectDM.LoadFromTMPFormat
            Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1080#1079' '#1074#1088#1077#1084#1077#1085#1085#1086#1075#1086' '#1092#1086#1088#1084#1072#1090#1072'...'
            DoubleBuffered = True
            ParentDoubleBuffered = False
            TabOrder = 2
          end
        end
        object DBGrid11: TDBGrid
          Left = 0
          Top = 44
          Width = 967
          Height = 569
          Align = alClient
          Ctl3D = True
          DataSource = DataConnectDM.DBFDataDS
          ParentCtl3D = False
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
      end
      object JobsAccountingTabSheet: TTabSheet
        Caption = #1059#1095#1077#1090' '#1088#1072#1073#1086#1090
        ImageIndex = 6
      end
      object PlanningTabSheet: TTabSheet
        Caption = #1055#1083#1072#1085#1080#1088#1086#1074#1072#1085#1080#1077
        ImageIndex = 7
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 776
    Top = 616
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object SQLQueryonStorageDBPanel1: TMenuItem
        Caption = 'SQL Query on Storage DB Panel...'
        Enabled = False
        OnClick = SQLQueryonStorageDBPanel1Click
      end
      object N2: TMenuItem
        Caption = #1043#1072#1082#1085#1091#1090#1100' '#1074#1089#1077'...'
        Enabled = False
        OnClick = N2Click
      end
    end
  end
end
