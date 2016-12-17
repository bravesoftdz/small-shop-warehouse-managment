unit DataConnectUnit;

interface

uses
  SysUtils, Classes, DB, ADODB, ActnList,
  DBActns, Dialogs, Variants, DateUtils, Controls, DBTables, DBClient;

type
  TDBParam = record
    IntValue: Integer;
    FloatValue: Double;
    StrValue: string;
  end;

  TDataConnectDM = class(TDataModule)
    StorageADOConn: TADOConnection;
    ProductsDS: TDataSource;
    DBActions: TActionList;
    NewProductDSI: TDataSetInsert;
    StorageStateADOQuery: TADOQuery;
    NewOrderTypeIDADOQ: TADOQuery;
    NewOrderDocADOC: TADOCommand;
    NewOrderItemADOC: TADOCommand;
    NewKontrAgIDADOQ: TADOQuery;
    NewOrderDocAction: TAction;
    NewOrderItemAction: TAction;
    KontragentsADOTable: TADOTable;
    OrderTypesADOTable: TADOTable;
    KontragentDS: TDataSource;
    OrderTypesDS: TDataSource;
    NewKontragentDSI: TDataSetInsert;
    NewOrderTypeDSI: TDataSetInsert;
    IncomeOrderTypesADOQ: TADOQuery;
    IncomeDocTypesDS: TDataSource;
    OrderDocsADOTable: TADOTable;
    OrderDocsDS: TDataSource;
    ClientListADOQ: TADOQuery;
    ClientListDS: TDataSource;
    NewOrderAction: TAction;
    OrderItemsADOQ: TADOQuery;
    OrderItemsDS: TDataSource;
    ProductSearchADOQ: TADOQuery;
    ParamByNameADOQ: TADOQuery;
    SysPrmsADOT: TADOTable;
    SysPrmsDS: TDataSource;
    NewSysParamDSI: TDataSetInsert;
    LastSaleOrdersADOQ: TADOQuery;
    LastSalesOrdersDS: TDataSource;
    SaleOrderItemsADOQ: TADOQuery;
    SaleOrderItemsDS: TDataSource;
    NewOrderIDADOSP: TADOStoredProc;
    NewOrderItemIDADOSP: TADOStoredProc;
    NewSaleAction: TAction;
    NewSaleItemAction: TAction;
    STORAGESTATEADOQ: TADOQuery;
    StorageStateDS: TDataSource;
    OrderDeleteADOC: TADOCommand;
    OrderItemDeleteADOC: TADOCommand;
    DeleteOrderAction: TAction;
    DeleteOrderItemAction: TAction;
    ProductSearchDS: TDataSource;
    NewProductADOSP: TADOStoredProc;
    PrTypesADOTable: TADOTable;
    NewProductTypeDSI: TDataSetInsert;
    PrTypesDS: TDataSource;
    NewPrTypeADOSP: TADOStoredProc;
    ProductsADOQuery: TADOQuery;
    ProductOpenPictAction: TAction;
    LoadPrPictADOC: TADOCommand;
    MovePrToOldADOC: TADOCommand;
    MovePrToOldAction: TAction;
    OrderItemsADOQORDERITEMID: TIntegerField;
    OrderItemsADOQPRODUCTID: TIntegerField;
    OrderItemsADOQORDERID: TIntegerField;
    OrderItemsADOQKONTRAGENTID: TIntegerField;
    OrderItemsADOQORDERTYPEID: TIntegerField;
    OrderItemsADOQPRICE: TFloatField;
    OrderItemsADOQITEM_SUMM: TFloatField;
    OrderItemsADOQPRODUCTNAME: TStringField;
    OrderItemsADOQQUANTITY: TFloatField;
    OrderItemsADOQMINWIDTH: TFloatField;
    OrderItemsADOQMINLENGTH: TFloatField;
    OrderItemsADOQUNITLENGTH: TFloatField;
    OrderItemsADOQUNITWIDTH: TFloatField;
    OrderItemsADOQITEM_COMMENT: TStringField;
    OrderItemsADOQADDDATETIME: TDateTimeField;
    OrderItemsADOQUNITSQUANTITY: TFloatField;
    OrderItemsADOQMEASURE: TStringField;
    OrderItemsADOQUNITNAME: TStringField;
    OrderItemsADOQQUANTITYINUNIT: TFloatField;
    StorageStateADOQueryPRODUCTID: TIntegerField;
    StorageStateADOQueryNAME: TStringField;
    StorageStateADOQueryMEASURE: TStringField;
    StorageStateADOQuerySTORAGE_QUANT: TFloatField;
    StorageStateADOQueryOUT_SUMM: TFloatField;
    StorageStateADOQueryINC_SUMM: TFloatField;
    StorageStateADOQueryOUT_QUANT: TFloatField;
    StorageStateADOQueryINC_QUANT: TFloatField;
    StorageStateADOQuerySALEPRICE: TFloatField;
    StorageStateADOQueryINCOME_PRICE: TFloatField;
    StorageStateADOQueryPRODUCTTYPEID: TIntegerField;
    StorageStateADOQueryUNITLENGTH: TFloatField;
    StorageStateADOQueryUNITWIDTH: TFloatField;
    StorageStateADOQueryUNITWEIGTH: TFloatField;
    StorageStateADOQueryVIEWIMAGE: TBlobField;
    StorageStateADOQueryISOLD: TIntegerField;
    StorageStateADOQueryUNITNAME: TStringField;
    StorageStateADOQueryADDDATETIME: TDateTimeField;
    StorageStateADOQueryQUANTITYINUNIT: TFloatField;
    StorageStateADOQueryMATERIALNAME: TStringField;
    StorageStateADOQueryTEXTURENAME: TStringField;
    StorageStateADOQueryCOLORNAME: TStringField;
    StorageStateADOQueryQISSQUARE: TIntegerField;
    STORAGESTATEADOQPRODUCTID: TIntegerField;
    STORAGESTATEADOQNAME: TStringField;
    STORAGESTATEADOQMEASURE: TStringField;
    STORAGESTATEADOQSTORAGE_QUANT: TFloatField;
    STORAGESTATEADOQOUT_SUMM: TFloatField;
    STORAGESTATEADOQINC_SUMM: TFloatField;
    STORAGESTATEADOQOUT_QUANT: TFloatField;
    STORAGESTATEADOQINC_QUANT: TFloatField;
    STORAGESTATEADOQSALEPRICE: TFloatField;
    STORAGESTATEADOQINCOME_PRICE: TFloatField;
    STORAGESTATEADOQPRODUCTTYPEID: TIntegerField;
    STORAGESTATEADOQUNITLENGTH: TFloatField;
    STORAGESTATEADOQUNITWIDTH: TFloatField;
    STORAGESTATEADOQUNITWEIGTH: TFloatField;
    STORAGESTATEADOQVIEWIMAGE: TBlobField;
    STORAGESTATEADOQISOLD: TIntegerField;
    STORAGESTATEADOQUNITNAME: TStringField;
    STORAGESTATEADOQADDDATETIME: TDateTimeField;
    STORAGESTATEADOQQUANTITYINUNIT: TFloatField;
    STORAGESTATEADOQMATERIALNAME: TStringField;
    STORAGESTATEADOQTEXTURENAME: TStringField;
    STORAGESTATEADOQCOLORNAME: TStringField;
    STORAGESTATEADOQQISSQUARE: TIntegerField;
    ProductsADOQueryPRODUCTTYPEID: TIntegerField;
    ProductsADOQueryISINSTRUMENT: TIntegerField;
    ProductsADOQueryISMANUFACTURED: TIntegerField;
    ProductsADOQueryISMATERIAL: TIntegerField;
    ProductsADOQueryPRTYPENAME: TStringField;
    ProductsADOQueryPRODUCTID: TIntegerField;
    ProductsADOQueryUNITLENGTH: TFloatField;
    ProductsADOQueryUNITWIDTH: TFloatField;
    ProductsADOQueryUNITWEIGTH: TFloatField;
    ProductsADOQueryNAME: TStringField;
    ProductsADOQuerySALEPRICE: TFloatField;
    ProductsADOQueryINCOME_PRICE: TFloatField;
    ProductsADOQueryMEASURE: TStringField;
    ProductsADOQueryVIEWIMAGE: TBlobField;
    ProductsADOQueryUNITNAME: TStringField;
    ProductsADOQueryQUANTITYINUNIT: TFloatField;
    ProductsADOQueryQISSQUARE: TIntegerField;
    PrGroupsDS: TDataSource;
    PrGroupsADODS: TADODataSet;
    DBFDataDS: TDataSource;
    ImportDBFAction: TAction;
    PrGroupByNameADOQ: TADOQuery;
    PrTypeByNameADOQ: TADOQuery;
    NewPrGroupADOSP: TADOStoredProc;
    DBFImportADOConnection: TADOConnection;
    DBFImportADOTable: TADOTable;
    STORAGESTATEADOQSTORAGE_SUMM: TFloatField;
    ClearAllEmptyProductsADOC: TADOCommand;
    ClearAllEmptyProductsTypes: TADOCommand;
    ClearAllEmptyProductsGroup: TADOCommand;
    ClearAllOrderItemsADOC: TADOCommand;
    ClearAllEmptyOrdersADOC: TADOCommand;
    JobTypesADOTable: TADOTable;
    JobTypesDS: TDataSource;
    NewJobTypeDSI: TDataSetInsert;
    PersonsADOTable: TADOTable;
    PersonsDS: TDataSource;
    NewPersonDSI: TDataSetInsert;
    GetPersonByLoginADOQ: TADOQuery;
    NewPrGroupAction: TAction;
    LinkProductToTypeAction: TAction;
    LinkProductToGroupAction: TAction;
    LinkPrToTypeADOC: TADOCommand;
    LinkPrToGroupADOC: TADOCommand;
    ProductsADOQueryPGROUPNAME: TStringField;
    NewProductExtADOSP: TADOStoredProc;
    ADTGFileODlg: TOpenDialog;
    ADTGFileSDlg: TSaveDialog;
    SaveImpToTMPFileAction: TAction;
    LoadFromTMPFormat: TAction;
    ProductsADOQueryDESCRIPTION: TStringField;
    ManufactureADOT: TADOTable;
    ProductsADOQueryMEASURE_ID: TIntegerField;
    ProductsADOQueryMANUFACTURE_ID: TIntegerField;
    ProductsADOQueryMANUFACT: TStringField;
    function NewOrderID: Integer;
    function NewOrderTypeID: Integer;
    function NewOrderItemID: Integer;
    function NewKontragentID: Integer;
    function NewOrderDoc(KontragentID, OrderTypeID: Integer): Integer;
    function NewOrderItem(KontragentID, OrderTypeID, OrderDocID, ProductID: Integer; SalePrice, Quant: Double; ProductName: string): Integer;
    procedure KontragentsADOTableBeforePost(DataSet: TDataSet);
    procedure OrderTypesADOTableBeforePost(DataSet: TDataSet);
    procedure NewOrderActionExecute(Sender: TObject);
    procedure SelectOrderItems(OrderID: Integer);
    procedure ReloadCurrOrderItemsTable;
    procedure SearchProduct(likestr: string);
    function GetFromDBParam(ParamName: string): TDBParam;
    function GetSaleOrderTypeID: Integer;
    function GetBuyerKontragentID: Integer;
    function GetDefaultSupplierID: Integer;
    function GetDefaultCustomerID: Integer;
    function GetDefaultIncomeOrderTypeID: Integer;
    function GetDefaultOutcomeOrderTypeID: Integer;
    function GetCurrentPersonID: Integer;
    function NewSaleOrderDoc: Integer;
    procedure ReloadSalesList(Filter: Integer = -1);
    procedure ReloadAllBaseDS;
    function NewSaleDocItem(ProductID: Integer; SalePrice, Quant: Double; ProductName: string): Integer;
    procedure ReloadSaleItemList(OrderID: Integer);
    procedure ReloadOrderTable;
    procedure ReloadOrderItemTable;
    procedure ReloadProductsTable;
    procedure ReloadKontagentsTable;
    procedure ReloadManufacturesTable;
    procedure ReloadOrderTypesTable;
    procedure ReloadStorageStateTable;
    procedure ReloadSalesItem;
    procedure ReloadCurrentSale;
    procedure ReloadClientList;
    procedure ReloadSystemParamsTable;
    procedure ReloadProductTypesTable;
    procedure ReloadProductGroupsTable;
    procedure ReloadDBFTable;
    procedure ReloadPersonTable;
    procedure ReloadJobTypesTable;
    procedure ReloadJobsTable;
    procedure ReloadProjectsTable;
    procedure DeleteOrder(OrderID: Integer);
    procedure DeleteOrderItem(OrderItemID: Integer);
    function AddNewProductByType(PrName: string; PrTypeID: Integer; PrGroupID: Integer;  Price: Double; Measure: string): Integer;
    function AddNewProductByTypeExt(PrName: string; PrTypeID: Integer; PrGroupID: Integer; Price: Double; Measure, Manufactured, Description: string): Integer;
    procedure ProductsPost;
    procedure KontagentsPost;
    procedure PostAllDataSets;
    procedure OrderDocsADOTableAfterScroll(DataSet: TDataSet);
    procedure NewOrderItemActionExecute(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure NewSaleActionExecute(Sender: TObject);
    procedure SaleItemsPost;
    procedure OrderItemsPost;
    procedure SignalizeByChanges;
    procedure ImportDBFData;
    procedure SaveImportDataInFile;
    procedure ImportFromTempFile;
    function SelectPrTypeByName(name: string): Integer;
    function SelectPrGroupByName(name: string): Integer;
    function AddNewPrType(name: string): Integer;
    function AddNewPGroup(name: string; PrTypeID: Integer = -1): Integer;
    procedure ClearDB;
    procedure LinkProductToType(pr_id, pt_id: Integer);
    procedure LinkProductToGroup(pr_id, pg_id: Integer);
    procedure DeleteOrderActionExecute(Sender: TObject);
    procedure DeleteOrderItemActionExecute(Sender: TObject);
    procedure NewOrderDocActionExecute(Sender: TObject);
    procedure NewProductDSIExecute(Sender: TObject);
    procedure NewProductTypeDSIExecute(Sender: TObject);
    procedure ProductOpenPictActionExecute(Sender: TObject);
    procedure MovePrToOldActionExecute(Sender: TObject);
    procedure OrderItemsDSUpdateData(Sender: TObject);
    procedure OrderItemsADOQBeforeEdit(DataSet: TDataSet);
    procedure ImportDBFActionExecute(Sender: TObject);
    procedure OrderItemsADOQAfterInsert(DataSet: TDataSet);
    procedure StorageADOConnAfterConnect(Sender: TObject);
    procedure NewPrGroupActionExecute(Sender: TObject);
    procedure LinkProductToTypeActionExecute(Sender: TObject);
    procedure LinkProductToGroupActionExecute(Sender: TObject);
    procedure SaveImpToTMPFileActionExecute(Sender: TObject);
    procedure LoadFromTMPFormatExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  DataConnectDM: TDataConnectDM;
  CurrentSaleOrderID: Integer = -1;
  CurrentSaleOrderItemID: Integer = -1;
  RealLogin: Boolean=False;
  CDP: Widestring;

implementation

{$R *.dfm}

uses InterfaceUnit, MainUnit;

function TDataConnectDM.GetCurrentPersonID: Integer;
var res: Integer;
begin
res:=-1;
 GetPersonByLoginADOQ.Active:=False;
 try
   GetPersonByLoginADOQ.Parameters.FindParam('login').Value:=
     StorageADOConn.Properties['User Name'].Value;

   GetPersonByLoginADOQ.Active:=True;
   if GetPersonByLoginADOQ.RecordCount<=0 then
     begin
       ShowMessage('�� ���������������� �� ������ ������������ � ������ '''+StorageADOConn.Properties['User Name'].Value+'''.');
     end
   else if GetPersonByLoginADOQ.RecordCount>1 then
     begin
       ShowMessage('���������������� ����� ������ ������������ � ������ '''+StorageADOConn.Properties['User Name'].Value+'''.');
     end
   else
     begin
       res:=GetPersonByLoginADOQ.FieldByName('PERSONID').AsInteger;
     end;
 except on E:Exception do
   begin
     ShowMessage('��������� ������ ������������ �� ��� �����! ���������: '+E.Message+'.');
   end;
 end;
 Result:=res;
end;

procedure TDataConnectDM.ClearDB;
begin
  try
  except on E:Exception do
    begin
      ShowMessage('��������� ���������� �������� �������� ���� ������� ����������! ���������: '+E.Message+'.');
    end;
  end;
end;

procedure TDataConnectDM.SignalizeByChanges;
begin
  MainForm.SaveAllChangesToolButton.Enabled:=True;
end;

procedure TDataConnectDM.StorageADOConnAfterConnect(Sender: TObject);
begin
  if RealLogin then
    begin
    GetCurrentPersonID;
    if GetPersonByLoginADOQ.RecordCount>0 then
    begin
      ShowMessage('������������, �� ����� � ������� ��� ������������� '+
        GetPersonByLoginADOQ.FindField('FullName').AsString+'!');
    end
    else
      begin
        MainForm.MainPageControl.Enabled:=False;
      end;
    end;
end;

procedure TDataConnectDM.PostAllDataSets;
begin
  MainForm.SaveAllChangesToolButton.Enabled:=False;
end;

function TDataConnectDM.SelectPrTypeByName(name: string): Integer;
var res: Integer;
begin
  res:=-1;
  PrTypeByNameADOQ.Active:=False;
  try
    PrTypeByNameADOQ.Parameters.FindParam('name').Value := name;
    PrTypeByNameADOQ.Active:=True;
    if PrTypeByNameADOQ.RecordCount>0 then
      res:=PrTypeByNameADOQ.FieldByName('PRODUCTTYPEID').Value;
  except on E:Exception do
    begin
      ShowMessage('��������� ����� ���� ��������� �� ����� ����! ���������: '+E.Message+'.');
    end;
  end;
  Result:=res;
end;

function TDataConnectDM.SelectPrGroupByName(name: string): Integer;
var res: Integer;
begin
  res:=-1;
  PrGroupByNameADOQ.Active:=False;
  try
    PrGroupByNameADOQ.Parameters.FindParam('name').Value := name;
    PrGroupByNameADOQ.Active:=True;
    if PrGroupByNameADOQ.RecordCount>0 then
      res:=PrGroupByNameADOQ.FieldByName('PRODUCTGROUPID').Value;
  except on E:Exception do
    begin
      ShowMessage('��������� ����� ������ ��������� �� ����� ������! ���������: '+E.Message+'.');
    end;
  end;
  Result:=res;
end;

function TDataConnectDM.AddNewPrType(name: string): Integer;
var res: Integer;
begin
  res:=-1;
  NewPrTypeADOSP.Parameters.FindParam('PRODUCTTYPENAME').Value := name;
  try
    //if not NewPrTypeADOSP.Active then
    //  NewPrTypeADOSP.Active:=True
    //else
    NewPrTypeADOSP.ExecProc;
    res:= NewPrTypeADOSP.Parameters.FindParam('PR_ID').Value;
  except on E:Exception do
    begin
      ShowMessage('��������� ���������� ��������� ���������� ������ ���� ���������! ���������: '+E.Message+'.');
    end;
  end;
  Result:=res;
end;

function TDataConnectDM.AddNewPGroup(name: string; PrTypeID: Integer = -1): Integer;
var res: Integer;
begin
  res:=-1;
  NewPrGroupADOSP.Parameters.FindParam('PRODUCTTYPEID').Value := PrTypeID;
  NewPrGroupADOSP.Parameters.FindParam('GROUPNAME').Value := name;
  try
    //if not NewPrGroupADOSP.Active then
    //  NewPrGroupADOSP.Active:=True
    //else
    NewPrGroupADOSP.ExecProc;
    res:= NewPrGroupADOSP.Parameters.FindParam('PR_ID').Value;
  except on E:Exception do
    begin
      ShowMessage('��������� ���������� ��������� ���������� ����� ������ ��������� �� ����! ���������: '+E.Message+'.');
    end;
  end;
  Result:=res;
end;

function TDataConnectDM.AddNewProductByType(PrName: string; PrTypeID: Integer; PrGroupID: Integer; Price: Double; Measure: string): Integer;
var res: Integer;
begin
  res:=-1;
  NewProductADOSP.Parameters.FindParam('PRODUCTGROUPID').Value := PrGroupID;
  NewProductADOSP.Parameters.FindParam('PRODUCTTYPEID').Value := PrTypeID;
  NewProductADOSP.Parameters.FindParam('PRODUCT_NAME').Value := PrName;
  NewProductADOSP.Parameters.FindParam('PRICE').Value := Price;
  NewProductADOSP.Parameters.FindParam('MEASURE').Value := Measure;
  try
    //if not NewProductADOSP.Active then
    //  NewProductADOSP.Active:=True
    //else
    NewProductADOSP.ExecProc;
    res:=NewProductADOSP.Parameters.FindParam('PR_ID').Value;
  except on E:Exception do
    begin
      ShowMessage('��������� ���������� ��������� ���������� ������ �������� �� ����! ���������: '+E.Message+'.');
    end;
  end;
  Result:=res;
end;

function TDataConnectDM.AddNewProductByTypeExt(PrName: string; PrTypeID: Integer; PrGroupID: Integer; Price: Double; Measure, Manufactured, Description: string): Integer;
var res: Integer;
begin
  res:=-1;
  //ShowMessage(IntToStr(PrTypeID));
  try
  NewProductExtADOSP.Parameters.FindParam('PRODUCTGROUPID').Value := PrGroupID;
  NewProductExtADOSP.Parameters.FindParam('PRODUCTTYPEID').Value := PrTypeID;
  NewProductExtADOSP.Parameters.FindParam('PRODUCT_NAME').Value := PrName;
  NewProductExtADOSP.Parameters.FindParam('PRICE').Value := Price;
  NewProductExtADOSP.Parameters.FindParam('MEASURE').Value := Measure;
  NewProductExtADOSP.Parameters.FindParam('MANUFACTURED').Value := Manufactured;
  NewProductExtADOSP.Parameters.FindParam('DESCRIPTION').Value := Description;

    //if not NewProductADOSP.Active then
    //  NewProductADOSP.Active:=True
    //else
    NewProductExtADOSP.ExecProc;
    res:=NewProductExtADOSP.Parameters.FindParam('PR_ID').Value;
  except on E:Exception do
    begin
      ShowMessage('��������� ���������� ��������� ���������� ������ �������� �� ����! ���������: '+E.Message+'.');
    end;
  end;
  Result:=res;
end;

procedure TDataConnectDM.ReloadPersonTable;
begin
  //PersonsADOTable.
  if (PersonsADOTable.State=dsEdit) or PersonsADOTable.Modified then
     PersonsADOTable.Post;
  PersonsADOTable.Active:=False;
   try
     PersonsADOTable.Active:=True;
   except on E:Exception do
    begin
        ShowMessage('��������� ��������� ������� �������������! ���������: '+E.Message+'.');
    end;
    end;
end;

procedure TDataConnectDM.ReloadJobTypesTable;
begin
  if (JobTypesADOTable.State=dsEdit) or JobTypesADOTable.Modified then
     JobTypesADOTable.Post;
  JobTypesADOTable.Active:=False;
   try
     JobTypesADOTable.Active:=True;
   except on E:Exception do
    begin
        ShowMessage('��������� ��������� ������� ����������� ����� �����! ���������: '+E.Message+'.');
    end;
    end;
end;

procedure TDataConnectDM.ReloadJobsTable;
begin
  //
end;

procedure TDataConnectDM.ReloadProjectsTable;
begin
  //
end;

procedure TDataConnectDM.ReloadDBFTable;
begin
  DBFImportADOTable.Active:=False;
   try
     DBFImportADOTable.Active:=True;
   except on E:Exception do
    begin
        ShowMessage('��������� ��������� ������� ������� DBF! ���������: '+E.Message+'.');
    end;
    end;
end;

procedure TDataConnectDM.ReloadProductTypesTable;
begin
   if (PrTypesADOTable.State=dsEdit) or PrTypesADOTable.Modified then
     PrTypesADOTable.Post;
   PrTypesADOTable.Active:=False;
   try
        PrTypesADOTable.Active:=True;
   except on E:Exception do
    begin
        ShowMessage('��������� ��������� ������� ����� �������! ���������: '+E.Message+'.');
    end;
    end;
end;

procedure TDataConnectDM.ReloadProductGroupsTable;
begin
   if (PrGroupsADODS.State=dsEdit) or PrGroupsADODS.Modified then
     PrGroupsADODS.Post;
   PrGroupsADODS.Active:=False;
   try
        PrGroupsADODS.Active:=True;
   except on E:Exception do
    begin
        ShowMessage('��������� ��������� ������� ����� �������! ���������: '+E.Message+'.');
    end;
    end;
end;

procedure TDataConnectDM.ReloadSystemParamsTable;
begin
  if (SysPrmsADOT.State=dsEdit) or SysPrmsADOT.Modified then
     SysPrmsADOT.Post;
  SysPrmsADOT.Active:=False;
  try
      SysPrmsADOT.Active:=True;
  except on E:Exception do
  begin
      ShowMessage('��������� ��������� ������� ��������� ����������! ���������: '+E.Message+'.');
  end;
  end;
end;

procedure TDataConnectDM.ReloadClientList;
begin
  ClientListADOQ.Active:=False;
  try
      ClientListADOQ.Active:=True;
  except on E:Exception do
  begin
      ShowMessage('��������� ��������� ������� ������ ������������! ���������: '+E.Message+'.');
  end;
  end;
end;

procedure TDataConnectDM.ReloadCurrentSale;
begin
  ReloadSalesList(CurrentSaleOrderID);
  ReloadSalesItem;
end;

procedure TDataConnectDM.ReloadSalesItem;
begin
  if LastSaleOrdersADOQ.RecordCount>0 then
    ReloadSaleItemList(LastSaleOrdersADOQ.FieldByName('ORDERID').AsInteger);
end;

procedure TDataConnectDM.DeleteOrder(OrderID: Integer);
begin
  if MessageDlg('������� �������� (���������)?',mtConfirmation,mbYesNo,0)=mrYes then
    begin
      OrderDeleteADOC.Parameters.ParamByName('orderid').Value:=
        OrderID;
      try
        OrderDeleteADOC.Execute;
        ReloadOrderTable;
      except on E:Exception do
      begin
          ShowMessage('��������� �������� ��������� �� ����! ���������: '+E.Message+'.');
      end;
      end;
    end;
end;

procedure TDataConnectDM.DeleteOrderActionExecute(Sender: TObject);
begin
  if OrderDocsADOTable.RecordCount>0 then
    begin
      DeleteOrder(OrderDocsADOTable.FieldByName('ORDERID').AsInteger);
    end;
end;

procedure TDataConnectDM.DeleteOrderItem(OrderItemID: Integer);
begin
  if MessageDlg('������� ������� ���������?',mtConfirmation,mbYesNo,0)=mrYes then
    begin
      OrderItemDeleteADOC.Parameters.ParamByName('orderitemid').Value:=
        OrderItemID;
      try
        OrderItemDeleteADOC.Execute;
        ReloadOrderItemTable;
      except on E:Exception do
      begin
          ShowMessage('��������� �������� ������� ��������� �� ����! ���������: '+E.Message+'.');
      end;
      end;
    end;
end;

procedure TDataConnectDM.DeleteOrderItemActionExecute(Sender: TObject);
begin
  if OrderItemsADOQ.RecordCount>0 then
    begin
      DeleteOrderItem(OrderItemsADOQ.FieldByName('ORDERITEMID').AsInteger);
    end;
end;

procedure TDataConnectDM.ReloadStorageStateTable;
begin
  STORAGESTATEADOQ.Active:=False;
  try
      STORAGESTATEADOQ.Active:=True;
  except on E:Exception do
  begin
      ShowMessage('��������� ��������� ������� ��������� ������! ���������: '+E.Message+'.');
  end;
  end;
end;

procedure TDataConnectDM.ReloadManufacturesTable;
begin
  if (ManufactureADOT.State=dsEdit) or ManufactureADOT.Modified then
     ManufactureADOT.Post;
  ManufactureADOT.Active:=False;
  try
      ManufactureADOT.Active:=True;
  except on E:Exception do
  begin
      ShowMessage('��������� ��������� ������� ����������� ��������������! ���������: '+E.Message+'.');
  end;
  end;
end;

procedure TDataConnectDM.ReloadOrderTypesTable;
begin
  if (OrderTypesADOTable.State=dsEdit) or OrderTypesADOTable.Modified then
     OrderTypesADOTable.Post;
  OrderTypesADOTable.Active:=False;
  try
      OrderTypesADOTable.Active:=True;
  except on E:Exception do
  begin
      ShowMessage('��������� ��������� ������� ����������� ����� ����������! ���������: '+E.Message+'.');
  end;
  end;
end;

procedure TDataConnectDM.ReloadKontagentsTable;
begin
  if (KontragentsADOTable.State=dsEdit) or KontragentsADOTable.Modified then
     KontragentsADOTable.Post;
  KontragentsADOTable.Active:=False;
  try
      KontragentsADOTable.Active:=True;
  except on E:Exception do
  begin
      ShowMessage('��������� ��������� ������� ����������� ������������! ���������: '+E.Message+'.');
  end;
  end;
end;

procedure TDataConnectDM.ReloadProductsTable;
begin
  if (ProductsADOQuery.State=dsEdit) or ProductsADOQuery.Modified then
    ProductsADOQuery.Post;
  ProductsADOQuery.Active:=False;
  try
      ProductsADOQuery.Active:=True;
  except on E:Exception do
  begin
      ShowMessage('��������� ��������� ������� ����������� �������! ���������: '+E.Message+'.');
  end;
  end;
end;

procedure TDataConnectDM.ReloadOrderTable;
begin
  if (OrderDocsADOTable.State=dsEdit) or OrderDocsADOTable.Modified then
    OrderDocsADOTable.Post;
  OrderDocsADOTable.Active:=False;
  try
      OrderDocsADOTable.Active:=True;
  except on E:Exception do
  begin
      ShowMessage('��������� ��������� ������� ����������! ���������: '+E.Message+'.');
  end;
  end;
end;

procedure TDataConnectDM.ReloadOrderItemTable;
begin
  if (OrderItemsADOQ.State=dsEdit) or OrderItemsADOQ.Modified then
    OrderItemsADOQ.Post;
  OrderItemsADOQ.Active:=False;
  try
      OrderItemsADOQ.Active:=True;
  except on E:Exception do
  begin
      ShowMessage('��������� ��������� ������� ������� ���������! ���������: '+E.Message+'.');
  end;
  end;
end;

procedure TDataConnectDM.KontagentsPost;
begin
  try
    if DataConnectDM.KontragentsADOTable.State=dsEdit then
      DataConnectDM.KontragentsADOTable.Post;
  except on E:Exception do
    MainForm.StatusBar1.Panels[3].Text:=
      '������ ����������. ���������: '+E.Message+'.';
  end;
end;

procedure TDataConnectDM.SaleItemsPost;
begin

  try
    if DataConnectDM.SaleOrderItemsADOQ.State=dsEdit then
      DataConnectDM.SaleOrderItemsADOQ.Post;
  except on E:Exception do
    MainForm.StatusBar1.Panels[3].Text:=
      '������ ����������. ���������: '+E.Message+'.';
  end;
end;

procedure TDataConnectDM.ProductOpenPictActionExecute(Sender: TObject);
var FileStream: TStream;
begin
  //FileStream = TStream.Create();
  //FileStream.
  if ProductsADOQuery.RecordCount>0 then
    begin
      if InterfaceDM.PrPictureOpenDialog.Execute then
        begin
          LoadPrPictADOC.Parameters.ParamByName('img').
            LoadFromFile(InterfaceDM.PrPictureOpenDialog.FileName, ftVarBytes);
          LoadPrPictADOC.Parameters.ParamByName('pr_id').Value :=
             ProductsADOQuery.FieldByName('PRODUCTID').AsInteger;
          try
              LoadPrPictADOC.Execute;
              DataConnectDM.ReloadProductsTable;
          except on E:Exception do
          begin
              ShowMessage('��������� ����������� ���������� �� �������� �����������! ���������: '+E.Message+'.');
          end;
          end;
          //ShowMessage(InterfaceDM.PrImageOPictD.FileName);
          //(ProductsADOQuery.FieldByName('VIEWIMAGE') as TBlobField).
          //  LoadFromFile(InterfaceDM.PrImageOPictD.FileName);
          //ProductsADOQuery.Post();
          //InterfaceDM.PrImageOPictD.
          //ProductsADOQuery.CreateBlobStream(
          //  ProductsADOQuery.FieldByName('VIEWIMAGE'),
          //  bmWrite).CopyFrom();
          //ProductsADOQuery.FieldByName('VIEWIMAGE').Value.
        end;
    end
  else
    ShowMessage('��� �� ������ ����������� ������ (�������, ���������)!');
end;

procedure TDataConnectDM.ProductsPost;
begin
  try
    if DataConnectDM.ProductsADOQuery.State=dsEdit then
     DataConnectDM.ProductsADOQuery.Post;
  except on E:Exception do
    MainForm.StatusBar1.Panels[3].Text:=
      '������ ����������. ���������: '+E.Message+'.';
  end;
end;

procedure TDataConnectDM.OrderItemsADOQAfterInsert(DataSet: TDataSet);
begin
  SignalizeByChanges;
end;

procedure TDataConnectDM.OrderItemsADOQBeforeEdit(DataSet: TDataSet);
begin
  SignalizeByChanges;
end;

procedure TDataConnectDM.OrderItemsDSUpdateData(Sender: TObject);
begin
  SignalizeByChanges;
end;

procedure TDataConnectDM.OrderItemsPost;
begin
  try
    //DataConnectDM.OrderItemsADOQ
    if DataConnectDM.OrderItemsADOQ.State=dsEdit then
      begin
        //ShowMessage('ddd');
        DataConnectDM.OrderItemsADOQ.Post;
        ReloadCurrOrderItemsTable;
      end;
  except on E:Exception do
    MainForm.StatusBar1.Panels[3].Text:=
      '������ ����������. ���������: '+E.Message+'.';
  end;
end;

function TDataConnectDM.GetFromDBParam(ParamName: string): TDBParam;
var res: TDBParam;
begin
  ParamByNameADOQ.Parameters.ParamByName('paramname').Value :=
    ParamName;
  res.IntValue:=-1;
  res.FloatValue:=-1;
  res.StrValue:='';
  try
      ParamByNameADOQ.Active:=False;
      ParamByNameADOQ.Active:=True;
      if ParamByNameADOQ.RecordCount=0 then
        ShowMessage('�� ������ �������� '+ParamName+' � ����! ��������� ���������!')
      else if ParamByNameADOQ.RecordCount>1 then
          ShowMessage('������� ����� 1-�� ��������� � ������ '+ParamName+' � ����! ��������� ���������!')
      else
        begin
          res.IntValue:=ParamByNameADOQ.FindField('INTVAL').AsInteger;
          res.FloatValue:=ParamByNameADOQ.FindField('FLOATVAL').AsFloat;
          res.StrValue:=ParamByNameADOQ.FindField('STRVAL').AsString;
        end;
  except on E:Exception do
  begin
      ShowMessage('��������� ������ ��������� '+ParamName+' �� ����! ���������: '+
      E.Message+'.');
  end;
  end;
  Result:=res;
end;

function TDataConnectDM.GetSaleOrderTypeID: Integer;
var res: Integer;
begin
  res:=GetFromDBParam('SaleOrderTypeID').IntValue;
  if res=-1 then
    begin
      ShowMessage('���������� �������� ''SaleOrderTypeID'' �� ������ ��������!');
    end;
  Result:=res;
end;

function TDataConnectDM.GetDefaultSupplierID: Integer;
var res: Integer;
begin
  res:=GetFromDBParam('DefaultSupplierID').IntValue;
  if res=-1 then
    begin
      ShowMessage('���������� �������� ''DefaultSupplierID'' �� ������ ��������!');
    end;
  Result:=res;
end;

function TDataConnectDM.GetDefaultCustomerID: Integer;
var res: Integer;
begin
  res:=GetFromDBParam('DefaultCustomerID').IntValue;
  if res=-1 then
    begin
      ShowMessage('���������� �������� ''DefaultCustomerID'' �� ������ ��������!');
    end;
  Result:=res;
end;

function TDataConnectDM.GetDefaultIncomeOrderTypeID: Integer;
var res: Integer;
begin
  res:=GetFromDBParam('DefaultIncomeOrderTypeID').IntValue;
  if res=-1 then
    begin
      ShowMessage('���������� �������� ''DefaultIncomeOrderTypeID'' �� ������ ��������!');
    end;
  Result:=res;
end;

function TDataConnectDM.GetDefaultOutcomeOrderTypeID: Integer;
var res: Integer;
begin
  res:=GetFromDBParam('DefaultOutcomeOrderTypeID').IntValue;
  if res=-1 then
    begin
      ShowMessage('���������� �������� ''DefaultOutcomeOrderTypeID'' �� ������ ��������!');
    end;
  Result:=res;
end;

procedure TDataConnectDM.SaveImportDataInFile;
begin
  if DBFImportADOTable.RecordCount>0 then
    begin
      if ADTGFileSDlg.Execute then
        DBFImportADOTable.SaveToFile(ADTGFileSDlg.FileName);
    end
  else
    ShowMessage('��� �� ����� ������ � DBF-��������� ��� ������� ������!');
end;

procedure TDataConnectDM.SaveImpToTMPFileActionExecute(Sender: TObject);
begin
  ReloadDBFTable;
  SaveImportDataInFile;
end;

procedure TDataConnectDM.ImportFromTempFile;
begin
   if ADTGFileODlg.Execute then
   begin
      //DBFImportADOTable.
      DBFImportADOTable.LoadFromFile(ADTGFileODlg.FileName);
   end;
end;

procedure TDataConnectDM.ImportDBFData;
var pr_name: string;
    pr_type: Integer;
    pr_group: Integer;
    new_pr_id: Integer;
    income_quant, outcome_quant: Double;
    new_inc_order_id, new_out_order_id, inc_kontragent_id, out_kontragent_id, inc_ordtype_id, out_ordtype_id: Integer;
begin
  new_inc_order_id:=-1;
  new_out_order_id:=-1;
  inc_kontragent_id:=-1;
  out_kontragent_id:=-1;
  inc_ordtype_id:=-1;
  out_ordtype_id:=-1;
  if DBFImportADOTable.RecordCount>0 then
    begin
      DBFImportADOTable.First;
      while True do
        begin
          pr_name :=  DBFImportADOTable.FieldByName('NAME').AsString;
          pr_type:=-1;
          if DBFImportADOTable.FieldByName('PR_TYPE').AsString<>'' then
            begin
              pr_type:=SelectPrTypeByName(DBFImportADOTable.FieldByName('PR_TYPE').AsString);
              if pr_type<0 then
                pr_type:=AddNewPrType(DBFImportADOTable.FieldByName('PR_TYPE').AsString);
              if pr_type<0 then
                begin
                  ShowMessage('��������� ���������� ������ ����! �������� ����� ��������!');
                  Exit;
                end;
            end
          else
            begin
              ShowMessage('� �������� '''+DBFImportADOTable.FieldByName('NAME').AsString+''' �� ����������� ��� ����. �������� ����������!');
            end;

          pr_group:=-1;
          if DBFImportADOTable.FieldByName('PR_GROUP').AsString<>'' then
            begin
              pr_group:=SelectPrGroupByName(DBFImportADOTable.FieldByName('PR_GROUP').AsString);
              if pr_group<0 then
                pr_group:=AddNewPGroup(DBFImportADOTable.FieldByName('PR_GROUP').AsString,pr_type);
              if pr_group<0 then
                begin
                  ShowMessage('��������� ���������� ����� ������ ��������� � ����! �������� ����� ��������!');
                  Exit;
                end;
            end;
          try

          finally

          end;
          //ShowMessage(pr_name+'+++'+IntToStr(pr_type)+'+++'+IntToStr(pr_group));
          new_pr_id:=
            AddNewProductByTypeExt( pr_name, pr_type, pr_group,
            StrToFloatDef(DBFImportADOTable.FieldByName('PRICE').AsString,0),
            DBFImportADOTable.FieldByName('MEASURE').AsString,
            DBFImportADOTable.FieldByName('MANUFACT').AsString,
            DBFImportADOTable.FieldByName('DESCRIPT').AsString);
          if new_pr_id>0 then
            begin
              income_quant:=
                StrToFloatDef(DBFImportADOTable.FieldByName('START_QU').AsString,0)+
                StrToFloatDef(DBFImportADOTable.FieldByName('INP_QUANT').AsString,0);
              if income_quant>0 then
                begin
                  inc_kontragent_id:=GetDefaultSupplierID;
                  inc_ordtype_id:=GetDefaultIncomeOrderTypeID;

                  new_inc_order_id:=NewOrderDoc(inc_kontragent_id,inc_ordtype_id);
                  NewOrderItem(inc_kontragent_id,
                               inc_ordtype_id,
                               new_inc_order_id, new_pr_id,
                               StrToFloatDef(DBFImportADOTable.FieldByName('PRICE').AsString,0),
                               income_quant,
                               DBFImportADOTable.FieldByName('NAME').AsString);
                end;
                outcome_quant:=
                  StrToFloatDef(DBFImportADOTable.FieldByName('OUT_QUANT').AsString,0);
              if outcome_quant>0 then
                begin
                  out_kontragent_id:=GetDefaultCustomerID;
                  out_ordtype_id:=GetDefaultOutcomeOrderTypeID;

                  new_out_order_id:=NewOrderDoc(out_kontragent_id,out_ordtype_id);
                  NewOrderItem(out_kontragent_id,
                               out_ordtype_id,
                               new_out_order_id, new_pr_id,
                               StrToFloatDef(DBFImportADOTable.FieldByName('PRICE').AsString,0),
                               outcome_quant,
                               DBFImportADOTable.FieldByName('NAME').AsString);
                end;

            end
          else
            begin
              ShowMessage('��������� ���������� ������ � ��������! ������ ������ ����� �������!');
              Exit;
            end;
          DBFImportADOTable.Next;
          if DBFImportADOTable.Eof then
            Break;
        end;
    end
  else
    ShowMessage('��� �� ����� ������ � DBF-��������� ��� ������� ������!');
end;

procedure TDataConnectDM.ImportDBFActionExecute(Sender: TObject);
begin
  ReloadDBFTable;
  ImportDBFData;
  ReloadProductsTable;
end;

procedure TDataConnectDM.ReloadAllBaseDS;
begin
  ReloadManufacturesTable;
  ReloadOrderTypesTable;
  ReloadOrderTable;
  ReloadOrderItemTable;
  ReloadProductsTable;
  ReloadKontagentsTable;
  ReloadStorageStateTable;
  ReloadClientList;
  ReloadSystemParamsTable;
  ReloadProductTypesTable;
  ReloadProductGroupsTable;

  ReloadPersonTable;
  ReloadJobTypesTable;
  ReloadJobsTable;
  ReloadProjectsTable;
end;

procedure TDataConnectDM.DataModuleCreate(Sender: TObject);
begin
  CDP:=GetCurrentDir;
  DataConnectDM.StorageADOConn.Connected:=False;
  DataConnectDM.StorageADOConn.LoginPrompt:=True;
  DataConnectDM.DBFImportADOConnection.Connected:=False;
  DataConnectDM.DBFImportADOConnection.LoginPrompt:=False;
  RealLogin:=True;
  DataConnectDM.StorageADOConn.ConnectionString:='FILE NAME='+CDP+'\FireBirdStorage.udl';
  DataConnectDM.DBFImportADOConnection.ConnectionString:='FILE NAME='+CDP+'\ImportConnect.udl';
  ADTGFileSDlg.InitialDir := CDP+'\er_model\';
  ADTGFileODlg.InitialDir := CDP+'\er_model\';
  //DataConnectDM.StorageADOConn.Connected:=True;
  //ReloadAllBaseDS;
end;

function TDataConnectDM.GetBuyerKontragentID: Integer;
var res: Integer;
begin
  res:=GetFromDBParam('BuyerKontragentID').IntValue;
  if res=-1 then
    begin
      ShowMessage('���������� �������� ''BuyerKontragentID'' �� ������ ��������!');
    end;
  Result:=res;
end;

procedure TDataConnectDM.ReloadSalesList(Filter: Integer = -1);
begin
  if (LastSaleOrdersADOQ.State=dsEdit) or LastSaleOrdersADOQ.Modified then
    LastSaleOrdersADOQ.Post;
  LastSaleOrdersADOQ.Active:=False;
  LastSaleOrdersADOQ.Parameters.FindParam('SaleOrderTypeID').Value:=
    GetSaleOrderTypeID;
  LastSaleOrdersADOQ.Parameters.FindParam('BuyerID').Value:=
    GetBuyerKontragentID;
  try
    LastSaleOrdersADOQ.Active:=True;
    if Filter>0 then
      begin
        LastSaleOrdersADOQ.Filtered:=False;
        LastSaleOrdersADOQ.Filter:='ORDERID='+IntToStr(Filter);
        LastSaleOrdersADOQ.Filtered:=True;
      end;
  except on E:Exception do
  begin
      ShowMessage('��������� ����������� ������� ������ ������!');
  end;
  end;
end;

procedure TDataConnectDM.NewPrGroupActionExecute(Sender: TObject);
begin
  if PrTypesADOTable.RecordCount>0 then
  begin
    AddNewPGroup('����� ������...',PrTypesADOTable.FieldByName('PRODUCTTYPEID').AsInteger);
    DataConnectDM.ReloadProductGroupsTable;
  end
  else
    ShowMessage('��� ����������� ���� �������!');
end;

procedure TDataConnectDM.NewProductDSIExecute(Sender: TObject);
begin
  if PrTypesADOTable.RecordCount>0 then
  begin
    AddNewProductByType('�����...',PrTypesADOTable.FieldByName('PRODUCTTYPEID').AsInteger, -1,0,'��.');
    DataConnectDM.ReloadProductsTable;
  end
  else
    ShowMessage('��� ����������� ���� ��������!');
end;

procedure TDataConnectDM.NewProductTypeDSIExecute(Sender: TObject);
begin
  try
    NewPrTypeADOSP.Parameters.ParamByName('PRODUCTTYPEID').Value := '�����...';
    //if not NewPrTypeADOSP.Active then
    //  NewPrTypeADOSP.Active:=True
    //else
    NewPrTypeADOSP.ExecProc;
    ReloadProductTypesTable;
  except on E:Exception do
    begin
      ShowMessage('��������� ���������� ��������� ���������� ������ ���� ��������! ���������: '+E.Message+'.');
    end;
  end;
end;

procedure TDataConnectDM.OrderDocsADOTableAfterScroll(DataSet: TDataSet);
begin
  ReloadCurrOrderItemsTable;
end;

procedure TDataConnectDM.OrderTypesADOTableBeforePost(DataSet: TDataSet);
begin
  if (DataSet.FieldByName('ORDERTYPEID').Value = NULL) then
  begin
    DataSet.FieldByName('ORDERTYPEID').AsInteger := NewOrderTypeID;
  end;
end;

function TDataConnectDM.NewOrderID: Integer;
var res: Integer;
begin
  //NewOrderIDADOSP.ExecProc;
  res:=-1;
  try
    try
      //if not NewOrderIDADOSP.Active then
      //   NewOrderIDADOSP.Active:=True
      //else
      NewOrderIDADOSP.ExecProc;
      res:=NewOrderIDADOSP.Parameters.ParamByName('ID').Value;
    except on E: Exception do
      begin
        ShowMessage('��������� ������ ID ���������! ������: '+E.Message+'.');
      end;
    end;
  finally
    //NewOrderDocIDADOQ.Active:=False;
  end;
  Result:=res;
end;

function TDataConnectDM.NewOrderTypeID: Integer;
var res: Integer;
begin
  res:=-1;
  NewOrderTypeIDADOQ.Active:=False;
  try
    try
      NewOrderTypeIDADOQ.Active:=True;
      if NewOrderTypeIDADOQ.RecordCount>0 then
        res:=NewOrderTypeIDADOQ.Fields[0].AsInteger
      else
        res:=1;
    except on E: Exception do
      begin
        ShowMessage('��������� ������ ID ���� ���������! ������: '+E.Message+'.');
      end;
    end;
  finally
    NewOrderTypeIDADOQ.Active:=False;
  end;
  Result:=res;
end;

function TDataConnectDM.NewOrderItemID: Integer;
var res: Integer;
begin
  res:=-1;
  try
    try
      //if not NewOrderItemIDADOSP.Active then
      //  NewOrderItemIDADOSP.Active:=True
      //else
      NewOrderItemIDADOSP.ExecProc;
      res:=NewOrderItemIDADOSP.Parameters.ParamByName('ID').Value;
    except on E: Exception do
      begin
        ShowMessage('��������� ������ ID ������� ���������! ������: '+E.Message+'.');
      end;
    end;
  finally
    //NewOrderItemADOQ.Active:=False;
  end;
  Result:=res;
end;

procedure TDataConnectDM.KontragentsADOTableBeforePost(DataSet: TDataSet);
begin
  if (DataSet.FieldByName('KONTRAGENTID').Value = NULL) then
  begin
    DataSet.FieldByName('KONTRAGENTID').AsInteger := NewKontragentID;
  end;
end;

procedure TDataConnectDM.LinkProductToGroupActionExecute(Sender: TObject);
begin
  if ProductsADOQuery.RecordCount>0 then
  begin
  if PrGroupsADODS.RecordCount>0 then
  begin
    LinkProductToGroup(ProductsADOQuery.FieldByName('PRODUCTID').AsInteger,
                      PrGroupsADODS.FieldByName('PRODUCTGROUPID').AsInteger);
    DataConnectDM.ReloadProductsTable;
  end
  else
    ShowMessage('��� ���������� ������ �������!');
  end
  else
    ShowMessage('�� �������� �� ������ �������� � ������� "������"!');
end;

procedure TDataConnectDM.LinkProductToType(pr_id, pt_id: Integer);
begin
  try
        LinkPrToTypeADOC.Parameters.FindParam('PR_ID').Value:=pr_id;
        LinkPrToTypeADOC.Parameters.FindParam('PT_ID').Value:=pt_id;
        LinkPrToTypeADOC.Execute;
  except on E:Exception do
        begin
          ShowMessage('��������� �������� ������ ������ � �����! ���������: '+E.Message+'.');
        end;
  end;
end;

procedure TDataConnectDM.LinkProductToGroup(pr_id, pg_id: Integer);
begin
  try
        LinkPrToGroupADOC.Parameters.FindParam('PR_ID').Value:=pr_id;
        LinkPrToGroupADOC.Parameters.FindParam('PG_ID').Value:=pg_id;
        LinkPrToGroupADOC.Execute;
  except on E:Exception do
        begin
          ShowMessage('��������� �������� ������ ������ � �������! ���������: '+E.Message+'.');
        end;
  end;
end;

procedure TDataConnectDM.LinkProductToTypeActionExecute(Sender: TObject);
begin
  if ProductsADOQuery.RecordCount>0 then
  begin
  if PrTypesADOTable.RecordCount>0 then
  begin
    LinkProductToType(ProductsADOQuery.FieldByName('PRODUCTID').AsInteger,
                      PrTypesADOTable.FieldByName('PRODUCTTYPEID').AsInteger);
    DataConnectDM.ReloadProductsTable;
  end
  else
    ShowMessage('��� ����������� ���� �������!');
  end
  else
    ShowMessage('�� �������� �� ������ �������� � ������� "������"!');
end;

procedure TDataConnectDM.LoadFromTMPFormatExecute(Sender: TObject);
begin
    ImportFromTempFile;
    ImportDBFData;
    ReloadProductsTable;
end;

procedure TDataConnectDM.MovePrToOldActionExecute(Sender: TObject);
begin
  if DataConnectDM.ProductsADOQuery.RecordCount>0 then
    begin
      DataConnectDM.MovePrToOldADOC.Parameters.FindParam('pr_id').Value :=
        DataConnectDM.ProductsADOQuery.FieldByName('PRODUCTID').AsInteger;
      try
        DataConnectDM.MovePrToOldADOC.Execute;
      except on E:Exception do
        begin
          ShowMessage('��������� �������� ������� ������ ��� �������! ���������: '+E.Message+'.');
        end;
      end;
      DataConnectDM.ReloadProductsTable;
    end
  else
    ShowMessage('�� �������� �� ������ �������� � ������� "������"!');

end;

function TDataConnectDM.NewKontragentID: Integer;
var res: Integer;
begin
  res:=-1;
  NewKontrAgIDADOQ.Active:=False;
  try
    try
      NewKontrAgIDADOQ.Active:=True;
      if NewKontrAgIDADOQ.RecordCount>0 then
        res:=NewKontrAgIDADOQ.Fields[0].AsInteger
      else
        res:=1;
    except on E: Exception do
      begin
        ShowMessage('��������� ������ ID ������ �����������! ������: '+E.Message+'.');
      end;
    end;
  finally
    NewKontrAgIDADOQ.Active:=False;
  end;
  Result:=res;
end;

//INSERT INTO ORDERDOC VALUES (:orid, :kntid, :otid, :addt);
procedure TDataConnectDM.NewOrderActionExecute(Sender: TObject);
begin
  if ClientListADOQ.RecordCount>0 then
  begin
    if OrderTypesADOTable.RecordCount>0 then
    begin
      NewOrderDoc(ClientListADOQ.FindField('KontragentID').AsInteger,
        OrderTypesADOTable.FindField('OrderTypeID').AsInteger);
      OrderDocsADOTable.Active:=False;
      OrderDocsADOTable.Active:=True;
    end
    else
      ShowMessage('� ���� ��� �� ������ ���� ���������!');
  end
  else
    ShowMessage('��� ����������� ������� � ������');
end;

procedure TDataConnectDM.NewSaleActionExecute(Sender: TObject);
begin
  NewSaleOrderDoc;
end;

function TDataConnectDM.NewSaleDocItem(ProductID: Integer; SalePrice, Quant: Double; ProductName: string): Integer;
begin
  if (CurrentSaleOrderID>0) and (LastSaleOrdersADOQ.RecordCount>0) then
    begin
      CurrentSaleOrderItemID:=
      NewOrderItem(GetBuyerKontragentID,GetSaleOrderTypeID,
        LastSaleOrdersADOQ.FieldByName('ORDERID').AsInteger,
        ProductID, SalePrice, Quant, ProductName);
      ReloadSaleItemList(LastSaleOrdersADOQ.FieldByName('ORDERID').AsInteger);
    end
  else
    begin
      ShowMessage('��� ������� ��������� �� �������!');
    end;
end;

procedure TDataConnectDM.ReloadSaleItemList(OrderID: Integer);
begin
  if (SaleOrderItemsADOQ.State=dsEdit) or SaleOrderItemsADOQ.Modified then
    SaleOrderItemsADOQ.Post;
  SaleOrderItemsADOQ.Active:=False;
  SaleOrderItemsADOQ.Parameters.ParamByName('orderid').Value :=
    OrderID;
  try
      SaleOrderItemsADOQ.Active:=True;
  except on E:Exception do
  begin
      ShowMessage('��������� ������ ������ ������� �������! ���������: '+E.Message+'.');
  end;
  end;
end;


function TDataConnectDM.NewSaleOrderDoc: Integer;
var OrderDocID: Integer;
begin
  OrderDocID:=-1;
  CurrentSaleOrderID:=
    NewOrderDoc(GetBuyerKontragentID,GetSaleOrderTypeID);
  ReloadSalesList(CurrentSaleOrderID);
  Result:=OrderDocID;
end;

function TDataConnectDM.NewOrderDoc(KontragentID, OrderTypeID: Integer): Integer;
var OrderDocID: Integer;
begin
  OrderDocID:=-1;
  try
    OrderDocID:=NewOrderID;
    NewOrderDocADOC.Parameters.FindParam('orid').Value := OrderDocID;
    NewOrderDocADOC.Parameters.FindParam('kntid').Value := KontragentID;
    NewOrderDocADOC.Parameters.FindParam('otid').Value := OrderTypeID;
    NewOrderDocADOC.Execute;
  except on E: Exception do
    begin
      OrderDocID:=-1;
      ShowMessage('��������� �������� ���������� ���������! ���������: '+E.Message+'.');
    end;
  end;
  Result:=OrderDocID;
end;

procedure TDataConnectDM.NewOrderDocActionExecute(Sender: TObject);
begin

end;

//INSERT INTO ORDERITEM VALUES (:oritid, :prid, :orid, :kntid, :otid, 0);
function TDataConnectDM.NewOrderItem(KontragentID, OrderTypeID, OrderDocID, ProductID: Integer; SalePrice, Quant: Double; ProductName: string): Integer;
var OrderItemID: Integer;
begin
  OrderItemID:=-1;
  try
    OrderItemID:=NewOrderItemID;
    NewOrderItemADOC.Parameters.FindParam('oritid').Value := OrderItemID;
    NewOrderItemADOC.Parameters.FindParam('prid').Value := ProductID;
    NewOrderItemADOC.Parameters.FindParam('orid').Value := OrderDocID;
    NewOrderItemADOC.Parameters.FindParam('kntid').Value := KontragentID;
    NewOrderItemADOC.Parameters.FindParam('otid').Value := OrderTypeID;
    NewOrderItemADOC.Parameters.FindParam('price').Value := SalePrice;
    NewOrderItemADOC.Parameters.FindParam('prname').Value := ProductName;
    NewOrderItemADOC.Parameters.FindParam('quant').Value := Quant;
    NewOrderItemADOC.Execute;
  except on E: Exception do
    begin
      OrderItemID:=-1;
      ShowMessage('��������� �������� ���������� ������� ���������! ���������: '+E.Message+'.');
    end;
  end;
  Result:=OrderItemID;
end;

procedure TDataConnectDM.NewOrderItemActionExecute(Sender: TObject);
begin
  if (ProductSearchADOQ.RecordCount>0) and (MainForm.ProductsSearchComboBox.ItemIndex>=0) then
  begin
    if OrderDocsADOTable.RecordCount>0 then
      begin
        NewOrderItem(OrderDocsADOTable.FieldByName('KontragentID').AsInteger,
                     OrderDocsADOTable.FieldByName('OrderTypeID').AsInteger,
                     OrderDocsADOTable.FieldByName('OrderID').AsInteger,
                     ProductSearchADOQ.FieldByName('PRODUCTID').AsInteger,
                     ProductSearchADOQ.FieldByName('SALEPRICE').AsFloat,
                     StrToFloat(MainForm.SaleQuantEdit.Text),
                     DataConnectDM.ProductSearchADOQ.FieldByName('NAME').AsString );
        ReloadCurrOrderItemsTable;
      end
    else
      ShowMessage('�� �������� ���������!');
  end
  else
    ShowMessage('�� �������� �� ������ ��������!');

end;

procedure TDataConnectDM.ReloadCurrOrderItemsTable;
begin
  if (OrderItemsADOQ.State=dsEdit) or OrderItemsADOQ.Modified then
    OrderItemsADOQ.Post;
  if OrderDocsADOTable.RecordCount>0 then
  begin
     if OrderDocsADOTable.FieldByName('OrderID').Value<>NULL then
        SelectOrderItems(OrderDocsADOTable.FieldByName('OrderID').AsInteger);
  end;
end;

procedure TDataConnectDM.SelectOrderItems(OrderID: Integer);
begin
  OrderItemsADOQ.Active:=False;
  OrderItemsADOQ.Parameters.FindParam('oid').Value:=OrderID;
  try
      OrderItemsADOQ.Active:=True;
  except on E: Exception do
  begin
      ShowMessage('��������� ������ ������� ���������! ���������: '+E.Message+'.');
  end;
  end;
end;

procedure TDataConnectDM.SearchProduct(likestr: string);
begin
  DataConnectDM.ProductSearchADOQ.Active:=False;
  DataConnectDM.ProductSearchADOQ.Parameters.FindParam('pr_like').Value:=likestr+'%';
  try
    DataConnectDM.ProductSearchADOQ.Active:=True;
  except on E:Exception do
    begin
      ShowMessage('��������� ������ ������ � �����������! ���������: '+E.Message+'.');
    end;
  end;
end;

end.
