@EndUserText.label: 'Sales Order Data'
@ObjectModel.query.implementedBy: 'ABAP:ZCL_ORDER_DETAILS'
@UI: { headerInfo: {
        typeName: 'Order',
        typeNamePlural: 'Orders' } }
define root custom entity ZD_SALESORDER
{

      @UI.facet                 :
      [ {        id             : 'Order',
                 purpose        : #STANDARD,
                 type           : #IDENTIFICATION_REFERENCE,
                 label          : 'Order Details',
                 targetQualifier: 'Order_Details',
                 position       : 10 },

        {        id             : 'Other_Details',
                 purpose        : #STANDARD,
                 type           : #IDENTIFICATION_REFERENCE,
                 label          : 'Other Details',
                 targetQualifier: 'Other_Details',
                 position       : 20 }  ]

      @UI                       : { lineItem: [{ label: 'Sales Order No.', emphasized: true }], identification:[ { qualifier: 'Order_Details', position: 10, label: 'Sales Order No.', emphasized: true } ], selectionField: [{ position: 10 }] }
      @EndUserText.label        : 'Sales Order No.'
  key SalesOrder                : abap.char( 10 );
      @UI                       : { lineItem: [{ label: 'Sales Order Type' }], identification:[ { qualifier: 'Order_Details', position: 20, label: 'Sales Order Type' } ] }
      SalesOrderType            : abap.char( 4 );
      @UI                       : { lineItem: [{ label: 'Sales Organization' }], identification:[ { qualifier: 'Order_Details', position: 30, label: 'Sales Organization' } ] }
      @Consumption.valueHelpDefinition: [{ entity: { name:'ZD_SALES_ORG', element:'SalesOrganization'} }]
      SalesOrganization         : abap.char( 4 );
      @UI                       : { lineItem: [{ label: 'Distribution Channel' }], identification:[ { qualifier: 'Order_Details', position: 40, label: 'Distribution Channel' } ] }
      DistributionChannel       : abap.char( 2 );
      @UI                       : { lineItem: [{ label: 'Division' }], identification:[ { qualifier: 'Order_Details', position: 50, label: 'Division' } ] }
      OrganizationDivision      : abap.char( 2 );
      @UI                       : { lineItem: [{ label: 'Sold to Party' }], identification:[ { qualifier: 'Order_Details', position: 60, label: 'Sold To Party' } ] }
      SoldToParty               : abap.char( 10 );
      @UI                       : { lineItem: [{ label: 'Net Amount' }], identification:[ { qualifier: 'Order_Details', position: 70, label: 'Net Amount' } ] }
      @Semantics.amount.currencyCode: 'TransactionCurrency'
      TotalNetAmount            : abap.curr( 16, 2 );
      @Semantics.currencyCode   : true
      TransactionCurrency       : abap.cuky;
      @UI                       : { lineItem: [{ label: 'IFRS ID' }], identification:[ { qualifier: 'Order_Details', position: 80, label: 'IFRS ID' } ] }
      ifrsid                    : abap.char(10);
      @UI                       : { lineItem: [{ label: 'Sales Group' }], identification:[ { qualifier: 'Other_Details', position: 10, label: 'Sales Group' } ] }
      SalesGroup                : abap.char( 3 );
      @UI                       : { lineItem: [{ label: 'Sales Office' }], identification:[ { qualifier: 'Other_Details', position: 20, label: 'Sales Office' } ] }
      SalesOffice               : abap.char( 4 );
      @UI                       : { lineItem: [{ label: 'Sales District' }], identification:[ { qualifier: 'Other_Details', position: 30, label: 'Sales District' } ] }
      SalesDistrict             : abap.char( 6 );
      @UI                       : { lineItem: [{ label: 'Created On' }], identification:[ { qualifier: 'Other_Details', position: 50, label: 'Created On' } ], selectionField: [{ position: 20 }] }
      @EndUserText.label        : 'Created On'
      CreationDate              : rap_cp_odata_v2_edm_datetime;
      @UI                       : { lineItem: [{ label: 'Created By' }], identification:[ { qualifier: 'Other_Details', position: 60, label: 'Created By' } ] }
      CreatedByUser             : abap.char( 12 );
      @UI                       : { lineItem: [{ label: 'External Document' }], identification:[ { qualifier: 'Other_Details', position: 70, label: 'External Document' } ] }
      ExternalDocumentID        : abap.char( 40 );
      @UI                       : { lineItem: [{ label: 'Customer PO' }], identification:[ { qualifier: 'Other_Details', position: 80, label: 'Customer PO' } ] }
      PurchaseOrderByCustomer   : abap.char( 35 );
      @UI                       : { lineItem: [{ label: 'Customer PO Type' }], identification:[ { qualifier: 'Other_Details', position: 90, label: 'Customer PO Type' } ] }
      CustomerPurchaseOrderType : abap.char( 4 );
      @UI                       : { lineItem: [{ label: 'Customer PO Date' }], identification:[ { qualifier: 'Other_Details', position: 100, label: 'Customer PO Date' } ] }
      CustomerPurchaseOrderDate : rap_cp_odata_v2_edm_datetime;
      @UI                       : { lineItem: [{ label: 'Order Reason' }], identification:[ { qualifier: 'Other_Details', position: 110, label: 'Order Reason' } ] }
      SDDocumentReason          : abap.char( 3 );
}
