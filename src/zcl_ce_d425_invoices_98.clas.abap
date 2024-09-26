CLASS zcl_ce_d425_invoices_98 DEFINITION
 PUBLIC
 FINAL
 CREATE PUBLIC .

 PUBLIC SECTION.

   INTERFACES if_oo_adt_classrun .
   INTERFACES if_rap_query_provider.

** Add the following type declaration to the Public Section of your class ZCL_CE_D425_INVOICES_##:
** -----------------------------------------------------------------------------------------------
   TYPES tt_business_data TYPE zsc_d425_invoices_98=>tyt_zz_1_customerinvoice_98_ty.

* Add the following method definition to the Public Section of your class ZCL_CE_D425_INVOICES_##:
* ------------------------------------------------------------------------------------------------
   METHODS get_invoices
     IMPORTING
       it_filter_cond   TYPE if_rap_query_filter=>tt_name_range_pairs OPTIONAL
       iv_top           TYPE i OPTIONAL
       iv_skip          TYPE i OPTIONAL
     EXPORTING
       et_business_data TYPE tt_business_data
     RAISING
       /iwbep/cx_cp_remote /iwbep/cx_gateway cx_web_http_client_error cx_http_dest_provider_error.


 PROTECTED SECTION.
 PRIVATE SECTION.
ENDCLASS.



CLASS zcl_ce_d425_invoices_98 IMPLEMENTATION.


 METHOD if_oo_adt_classrun~main.
   DATA lt_business_data TYPE tt_business_data.
   DATA lt_filter_conditions  TYPE if_rap_query_filter=>tt_name_range_pairs.
   DATA lt_ranges_table TYPE if_rap_query_filter=>tt_range_option.

   lt_ranges_table = VALUE #( (  sign = 'I' option = 'GE' low = '1' ) ).
   lt_filter_conditions = VALUE #( ( name = 'ID'  range = lt_ranges_table ) ).

   TRY.
       me->get_invoices(
         EXPORTING
           it_filter_cond    = lt_filter_conditions
           iv_top               =  3
           iv_skip              =  0
         IMPORTING
           et_business_data  = lt_business_data
         ) .
       out->write( lt_business_data ).
     CATCH cx_root INTO DATA(lx_exception).
       out->write( cl_message_helper=>get_latest_t100_exception( lx_exception )->if_message~get_longtext( ) ).
   ENDTRY.
 ENDMETHOD.
 METHOD get_invoices.
   DATA: lo_root_filter_node TYPE REF TO /iwbep/if_cp_filter_node.

   " Create http client
   DATA(lo_http_destination) =
         cl_http_destination_provider=>create_by_cloud_destination( i_name = 'S4D_100'
                                                                    i_authn_mode = if_a4c_cp_service=>service_specific ).

   "create HTTP client by destination
   DATA(lo_http_client) = cl_web_http_client_manager=>create_by_http_destination( lo_http_destination ) .

   DATA(lo_odata_client_proxy) =
       /iwbep/cl_cp_factory_remote=>create_v2_remote_proxy(
           EXPORTING
           is_proxy_model_key       = VALUE #(     repository_id              = 'DEFAULT'
                                                   proxy_model_id             = 'ZSC_D425_INVOICES_98'
                                                   proxy_model_version        = '0001' )
           io_http_client             = lo_http_client
           iv_relative_service_root   = '/sap/opu/odata/sap/ZZ1_CUSTOMERINVOICE98_CDS' ).

   " Navigate to the resource and create a request for the read operation
   DATA(lo_request) = lo_odata_client_proxy->create_resource_for_entity_set( 'ZZ_1_CUSTOMERINVOICE_98' )->create_request_for_read( ).

   " Create the filter tree
   DATA(lo_filter_factory) = lo_request->create_filter_factory( ).
   LOOP AT it_filter_cond INTO DATA(ls_filter_cond).
     DATA(lo_filter_node)  = lo_filter_factory->create_by_range( iv_property_path     = ls_filter_cond-name
                                                                 it_range             = ls_filter_cond-range ).
     IF lo_root_filter_node IS INITIAL.
       lo_root_filter_node = lo_filter_node.
     ELSE.
       lo_root_filter_node = lo_root_filter_node->and( lo_filter_node ).
     ENDIF.
   ENDLOOP.

   IF lo_root_filter_node IS NOT INITIAL.
     lo_request->set_filter( lo_root_filter_node ).
   ENDIF.

   IF iv_top > 0 .
     lo_request->set_top( iv_top ).
   ENDIF.

   lo_request->set_skip( iv_skip ).

   " Execute the request and retrieve the business data
   DATA(lo_response) = lo_request->execute( ).
   lo_response->get_business_data( IMPORTING et_business_data = et_business_data ).
 ENDMETHOD.

 METHOD if_rap_query_provider~select.
   DATA lt_business_data TYPE tt_business_data.

   DATA(lv_top)     = io_request->get_paging( )->get_page_size( ).
   DATA(lv_skip)    = io_request->get_paging( )->get_offset( ).

   DATA(lt_sort_order)    = io_request->get_sort_elements( ).

   TRY.
       DATA(lt_filter_conditions) = io_request->get_filter( )->get_as_ranges( ).

       me->get_invoices(
                EXPORTING
                  it_filter_cond    = lt_filter_conditions
                  iv_top               = CONV i( lv_top )
                  iv_skip              = CONV i( lv_skip )
                IMPORTING
                  et_business_data  = lt_business_data
                ) .

       io_response->set_total_number_of_records( lines( lt_business_data ) ).
       io_response->set_data( lt_business_data ).

     CATCH cx_root INTO DATA(lx_exception).
       RAISE EXCEPTION TYPE zcx_rap_query_provider
         EXPORTING
*           textid   =
           previous = lx_exception
       .
   ENDTRY.
 ENDMETHOD.

ENDCLASS.

