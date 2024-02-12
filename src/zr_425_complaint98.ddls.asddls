@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: '##GENERATED Z425_COMPLAINT98 Solution'
define root view entity ZR_425_COMPLAINT98
  as select from z425_complaint98 as Complaint
{
  key uuid as UUID,
  complaint_id as ComplaintID,
  invoice_id as InvoiceID,
  customer_id as CustomerID,
  customer_name as CustomerName,
  reason as Reason,
  action as Action,
  closed as Closed,
  created_by as CreatedBy,
  created_at as CreatedAt,
  last_changed_by as LastChangedBy,
  last_changed_at as LastChangedAt,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  local_last_changed as LocalLastChanged,
  @Semantics.systemDateTime.lastChangedAt: true
  last_changed as LastChanged
  
}
