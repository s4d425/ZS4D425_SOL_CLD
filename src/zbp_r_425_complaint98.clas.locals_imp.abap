CLASS lhc_zr_425_complaint98 DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.
    METHODS:
      get_global_authorizations FOR GLOBAL AUTHORIZATION
        IMPORTING
        REQUEST requested_authorizations FOR Complaint
        RESULT result,
      CalculateComplaintID FOR DETERMINE ON SAVE
        IMPORTING keys FOR Complaint~CalculateComplaintID.
ENDCLASS.

CLASS lhc_zr_425_complaint98 IMPLEMENTATION.
  METHOD get_global_authorizations.
  ENDMETHOD.

  METHOD CalculateComplaintID.
    "Ensure idempotence
    READ ENTITIES OF zr_425_complaint98
    IN LOCAL MODE ENTITY Complaint
    FIELDS ( ComplaintID )
    WITH CORRESPONDING #( keys )
    RESULT DATA(complaints).

    DELETE complaints
    WHERE ComplaintID IS NOT INITIAL.

    CHECK complaints IS NOT INITIAL.

    "Get max complaintID

    SELECT SINGLE
    FROM z425_complaint98
    FIELDS MAX( complaint_id )
    INTO @DATA(max_complaint).
    "update involved instances
    MODIFY ENTITIES OF zr_425_complaint98
    IN LOCAL MODE
    ENTITY Complaint
    UPDATE FIELDS ( ComplaintID )
    WITH VALUE #( FOR complaint IN complaints INDEX INTO i ( %tky = complaint-%tky
                                                              ComplaintID = max_complaint + i ) )
    REPORTED DATA(lt_reported).
    "fill reported
    reported = CORRESPONDING #( DEEP lt_reported ).
  ENDMETHOD.

ENDCLASS.
