@EndUserText.label: 'CE 00'
@ObjectModel.query.implementedBy: 'ABAP:ZCL_CE_D425_INVOICES_98'
define custom entity ZCE_D425_INVOICES_98
{
  key SAP_UUID     : sysuuid_x16;
      ID           : abap.numc( 10 );
      Customer_ID   : abap.numc( 8 );
      Customer_Name : abap.char( 25 );
      @Semantics.amount.currencyCode: 'Amount_C'
      Amount_V     : abap.curr( 16, 2 );
      @Semantics.currencyCode: true
      Amount_C     : abap.cuky;
}
