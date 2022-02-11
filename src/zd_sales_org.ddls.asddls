@EndUserText.label: 'Sales Org Data'
@ObjectModel.query.implementedBy: 'ABAP:ZCL_SALES_ORG'
@UI: { headerInfo: {
        typeName: 'Sales Org',
        typeNamePlural: 'Sales Orgs' } }
define root custom entity ZD_SALES_ORG
{
  key SalesOrganization : abap.char( 4 );
}
