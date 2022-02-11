/********** GENERATED on 07/17/2021 at 08:56:17 by CB0000000012**************/
 @OData.entitySet.name: 'A_SalesOrder' 
 @OData.entityType.name: 'A_SalesOrderType' 
 define root abstract entity ZA_SALESORDER { 
 key SalesOrder : abap.char( 10 ) ; 
 @Odata.property.valueControl: 'SalesOrderType_vc' 
 SalesOrderType : abap.char( 4 ) ; 
 SalesOrderType_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'SalesOrganization_vc' 
 SalesOrganization : abap.char( 4 ) ; 
 SalesOrganization_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'DistributionChannel_vc' 
 DistributionChannel : abap.char( 2 ) ; 
 DistributionChannel_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'OrganizationDivision_vc' 
 OrganizationDivision : abap.char( 2 ) ; 
 OrganizationDivision_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'SalesGroup_vc' 
 SalesGroup : abap.char( 3 ) ; 
 SalesGroup_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'SalesOffice_vc' 
 SalesOffice : abap.char( 4 ) ; 
 SalesOffice_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'SalesDistrict_vc' 
 SalesDistrict : abap.char( 6 ) ; 
 SalesDistrict_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'SoldToParty_vc' 
 SoldToParty : abap.char( 10 ) ; 
 SoldToParty_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'CreationDate_vc' 
 CreationDate : RAP_CP_ODATA_V2_EDM_DATETIME ; 
 CreationDate_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'CreatedByUser_vc' 
 CreatedByUser : abap.char( 12 ) ; 
 CreatedByUser_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'LastChangeDate_vc' 
 LastChangeDate : RAP_CP_ODATA_V2_EDM_DATETIME ; 
 LastChangeDate_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'SenderBusinessSystemName_vc' 
 SenderBusinessSystemName : abap.char( 60 ) ; 
 SenderBusinessSystemName_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'ExternalDocumentID_vc' 
 ExternalDocumentID : abap.char( 40 ) ; 
 ExternalDocumentID_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'LastChangeDateTime_vc' 
 LastChangeDateTime : tzntstmpl ; 
 LastChangeDateTime_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'PurchaseOrderByCustomer_vc' 
 PurchaseOrderByCustomer : abap.char( 35 ) ; 
 PurchaseOrderByCustomer_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'PurchaseOrderByShipToParty_vc' 
 PurchaseOrderByShipToParty : abap.char( 35 ) ; 
 PurchaseOrderByShipToParty_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'CustomerPurchaseOrderType_vc' 
 CustomerPurchaseOrderType : abap.char( 4 ) ; 
 CustomerPurchaseOrderType_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'CustomerPurchaseOrderDate_vc' 
 CustomerPurchaseOrderDate : RAP_CP_ODATA_V2_EDM_DATETIME ; 
 CustomerPurchaseOrderDate_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'SalesOrderDate_vc' 
 SalesOrderDate : RAP_CP_ODATA_V2_EDM_DATETIME ; 
 SalesOrderDate_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'TotalNetAmount_vc' 
 @Semantics.amount.currencyCode: 'TransactionCurrency' 
 TotalNetAmount : abap.curr( 16, 3 ) ; 
 TotalNetAmount_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'TransactionCurrency_vc' 
 @Semantics.currencyCode: true 
 TransactionCurrency : abap.cuky ; 
 TransactionCurrency_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'SDDocumentReason_vc' 
 SDDocumentReason : abap.char( 3 ) ; 
 SDDocumentReason_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'PricingDate_vc' 
 PricingDate : RAP_CP_ODATA_V2_EDM_DATETIME ; 
 PricingDate_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'RequestedDeliveryDate_vc' 
 RequestedDeliveryDate : RAP_CP_ODATA_V2_EDM_DATETIME ; 
 RequestedDeliveryDate_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'ShippingCondition_vc' 
 ShippingCondition : abap.char( 2 ) ; 
 ShippingCondition_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'CompleteDeliveryIsDefined_vc' 
 CompleteDeliveryIsDefined : abap_boolean ; 
 CompleteDeliveryIsDefined_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'ShippingType_vc' 
 ShippingType : abap.char( 2 ) ; 
 ShippingType_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'HeaderBillingBlockReason_vc' 
 HeaderBillingBlockReason : abap.char( 2 ) ; 
 HeaderBillingBlockReason_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'DeliveryBlockReason_vc' 
 DeliveryBlockReason : abap.char( 2 ) ; 
 DeliveryBlockReason_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'DeliveryDateTypeRule_vc' 
 DeliveryDateTypeRule : abap.char( 1 ) ; 
 DeliveryDateTypeRule_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'IncotermsClassification_vc' 
 IncotermsClassification : abap.char( 3 ) ; 
 IncotermsClassification_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'IncotermsTransferLocation_vc' 
 IncotermsTransferLocation : abap.char( 28 ) ; 
 IncotermsTransferLocation_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'IncotermsLocation1_vc' 
 IncotermsLocation1 : abap.char( 70 ) ; 
 IncotermsLocation1_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'IncotermsLocation2_vc' 
 IncotermsLocation2 : abap.char( 70 ) ; 
 IncotermsLocation2_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'IncotermsVersion_vc' 
 IncotermsVersion : abap.char( 4 ) ; 
 IncotermsVersion_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'CustomerPriceGroup_vc' 
 CustomerPriceGroup : abap.char( 2 ) ; 
 CustomerPriceGroup_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'PriceListType_vc' 
 PriceListType : abap.char( 2 ) ; 
 PriceListType_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'CustomerPaymentTerms_vc' 
 CustomerPaymentTerms : abap.char( 4 ) ; 
 CustomerPaymentTerms_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'PaymentMethod_vc' 
 PaymentMethod : abap.char( 1 ) ; 
 PaymentMethod_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'AssignmentReference_vc' 
 AssignmentReference : abap.char( 18 ) ; 
 AssignmentReference_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'ReferenceSDDocument_vc' 
 ReferenceSDDocument : abap.char( 10 ) ; 
 ReferenceSDDocument_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'ReferenceSDDocumentCategory_vc' 
 ReferenceSDDocumentCategory : abap.char( 4 ) ; 
 ReferenceSDDocumentCategory_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'AccountingDocExternalRefere_vc' 
 AccountingDocExternalReference : abap.char( 16 ) ; 
 AccountingDocExternalRefere_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'CustomerAccountAssignmentGr_vc' 
 CustomerAccountAssignmentGroup : abap.char( 2 ) ; 
 CustomerAccountAssignmentGr_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'AccountingExchangeRate_vc' 
 AccountingExchangeRate : abap.dec( 9, 5 ) ; 
 AccountingExchangeRate_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'CustomerGroup_vc' 
 CustomerGroup : abap.char( 2 ) ; 
 CustomerGroup_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'AdditionalCustomerGroup1_vc' 
 AdditionalCustomerGroup1 : abap.char( 3 ) ; 
 AdditionalCustomerGroup1_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'AdditionalCustomerGroup2_vc' 
 AdditionalCustomerGroup2 : abap.char( 3 ) ; 
 AdditionalCustomerGroup2_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'AdditionalCustomerGroup3_vc' 
 AdditionalCustomerGroup3 : abap.char( 3 ) ; 
 AdditionalCustomerGroup3_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'AdditionalCustomerGroup4_vc' 
 AdditionalCustomerGroup4 : abap.char( 3 ) ; 
 AdditionalCustomerGroup4_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'AdditionalCustomerGroup5_vc' 
 AdditionalCustomerGroup5 : abap.char( 3 ) ; 
 AdditionalCustomerGroup5_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'SlsDocIsRlvtForProofOfDeliv_vc' 
 SlsDocIsRlvtForProofOfDeliv : abap_boolean ; 
 SlsDocIsRlvtForProofOfDeliv_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'CustomerTaxClassification1_vc' 
 CustomerTaxClassification1 : abap.char( 1 ) ; 
 CustomerTaxClassification1_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'CustomerTaxClassification2_vc' 
 CustomerTaxClassification2 : abap.char( 1 ) ; 
 CustomerTaxClassification2_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'CustomerTaxClassification3_vc' 
 CustomerTaxClassification3 : abap.char( 1 ) ; 
 CustomerTaxClassification3_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'CustomerTaxClassification4_vc' 
 CustomerTaxClassification4 : abap.char( 1 ) ; 
 CustomerTaxClassification4_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'CustomerTaxClassification5_vc' 
 CustomerTaxClassification5 : abap.char( 1 ) ; 
 CustomerTaxClassification5_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'CustomerTaxClassification6_vc' 
 CustomerTaxClassification6 : abap.char( 1 ) ; 
 CustomerTaxClassification6_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'CustomerTaxClassification7_vc' 
 CustomerTaxClassification7 : abap.char( 1 ) ; 
 CustomerTaxClassification7_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'CustomerTaxClassification8_vc' 
 CustomerTaxClassification8 : abap.char( 1 ) ; 
 CustomerTaxClassification8_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'CustomerTaxClassification9_vc' 
 CustomerTaxClassification9 : abap.char( 1 ) ; 
 CustomerTaxClassification9_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'TaxDepartureCountry_vc' 
 TaxDepartureCountry : abap.char( 3 ) ; 
 TaxDepartureCountry_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'VATRegistrationCountry_vc' 
 VATRegistrationCountry : abap.char( 3 ) ; 
 VATRegistrationCountry_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'SalesOrderApprovalReason_vc' 
 SalesOrderApprovalReason : abap.char( 4 ) ; 
 SalesOrderApprovalReason_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'SalesDocApprovalStatus_vc' 
 SalesDocApprovalStatus : abap.char( 1 ) ; 
 SalesDocApprovalStatus_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'OverallSDProcessStatus_vc' 
 OverallSDProcessStatus : abap.char( 1 ) ; 
 OverallSDProcessStatus_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'TotalCreditCheckStatus_vc' 
 TotalCreditCheckStatus : abap.char( 1 ) ; 
 TotalCreditCheckStatus_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'OverallTotalDeliveryStatus_vc' 
 OverallTotalDeliveryStatus : abap.char( 1 ) ; 
 OverallTotalDeliveryStatus_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'OverallSDDocumentRejectionS_vc' 
 OverallSDDocumentRejectionSts : abap.char( 1 ) ; 
 OverallSDDocumentRejectionS_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'FashionCancelDate_vc' 
 FashionCancelDate : RAP_CP_ODATA_V2_EDM_DATETIME ; 
 FashionCancelDate_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'RetailAdditionalCustomerGrp_vc' 
 RetailAdditionalCustomerGrp6 : abap.char( 3 ) ; 
 RetailAdditionalCustomerGrp_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'RetailAdditionalCustomerGrp_v1' 
 RetailAdditionalCustomerGrp7 : abap.char( 3 ) ; 
 RetailAdditionalCustomerGrp_v1 : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'RetailAdditionalCustomerGrp_v2' 
 RetailAdditionalCustomerGrp8 : abap.char( 3 ) ; 
 RetailAdditionalCustomerGrp_v2 : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'RetailAdditionalCustomerGrp_v3' 
 RetailAdditionalCustomerGrp9 : abap.char( 3 ) ; 
 RetailAdditionalCustomerGrp_v3 : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'RetailAdditionalCustomerGrp_v4' 
 RetailAdditionalCustomerGrp10 : abap.char( 3 ) ; 
 RetailAdditionalCustomerGrp_v4 : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'zmh_nationality_vc' 
 zmh_nationality : abap.char( 3 ) ; 
 zmh_nationality_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 ETAG__ETAG : abap.string( 0 ) ; 
 
 } 
