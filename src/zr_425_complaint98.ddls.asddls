@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZR_425_COMPLAINT98
  as select from Z425_COMPLAINT98 as Complaint
{
  key uuid as Uuid,
  complaint_id as ComplaintId,
  invoice_id as InvoiceId,
  customer_id as CustomerId,
  customer_name as CustomerName,
  reason as Reason,
  action as Action,
  closed as Closed,
  @Semantics.user.createdBy: true
  local_created_by as LocalCreatedBy,
  @Semantics.systemDateTime.createdAt: true
  local_created_at as LocalCreatedAt,
  @Semantics.user.localInstanceLastChangedBy: true
  local_last_changed_by as LocalLastChangedBy,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  local_last_changed_at as LocalLastChangedAt,
  @Semantics.systemDateTime.lastChangedAt: true
  last_changed_at as LastChangedAt
  
}
