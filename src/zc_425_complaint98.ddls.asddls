@Metadata.allowExtensions: true
@EndUserText.label: '###GENERATED Core Data Service Entity'
@AccessControl.authorizationCheck: #CHECK
define root view entity ZC_425_COMPLAINT98
  provider contract transactional_query
  as projection on ZR_425_COMPLAINT98
{
  key Uuid,
      ComplaintId,
      @Consumption.valueHelpDefinition:
      [{ entity : { name: 'ZCE_D425_INVOICES_98', element: 'ID' },
         additionalBinding :
         [{ localElement: 'CustomerId', element: 'Customer_ID' },
          { localElement: 'CustomerName', element: 'Customer_Name' }] }]
      InvoiceId,
      CustomerId,
      CustomerName,
      Reason,
      Action,
      Closed,
      LocalCreatedBy,
      LocalCreatedAt,
      LocalLastChangedBy,
      LocalLastChangedAt,
      LastChangedAt

}
