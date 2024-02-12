@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: 'Projection View for ZR_425_COMPLAINT98'
define root view entity ZC_425_COMPLAINT98
  provider contract transactional_query
  as projection on ZR_425_COMPLAINT98
{
  key UUID,
      ComplaintID,
      @Consumption.valueHelpDefinition:
      [{ entity : { name: 'ZCE_D425_INVOICES_98', element: 'ID' },
       additionalBinding :
       [{ localElement: 'CustomerID', element: 'Customer_ID' },
        { localElement: 'CustomerName', element: 'Customer_Name' }] }]
      InvoiceID,
      CustomerID,
      CustomerName,
      Reason,
      Action,
      Closed,
      CreatedBy,
      CreatedAt,
      LastChangedBy,
      LastChangedAt,
      LocalLastChanged

}
