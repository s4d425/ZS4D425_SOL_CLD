"! <p class="shorttext synchronized">Consumption model for client proxy - generated</p>
"! This class has been generated based on the metadata with namespace
"! <em>ZZ1_CUSTOMERINVOICE98_CDS</em>
CLASS zsc_d425_invoices_98 DEFINITION
  PUBLIC
  INHERITING FROM /iwbep/cl_v4_abs_pm_model_prov
  CREATE PUBLIC.

  PUBLIC SECTION.

    TYPES:
      "! <p class="shorttext synchronized">Types for "OData Primitive Types"</p>
      BEGIN OF tys_types_for_prim_types,
        "! Used for primitive type AMOUNT_C
        amount_c          TYPE c LENGTH 5,
        "! Used for primitive type AMOUNT_V
        amount_v          TYPE p LENGTH 9 DECIMALS 3,
        "! Used for primitive type CUSTOMER_ID
        customer_id       TYPE c LENGTH 8,
        "! Used for primitive type CUSTOMER_NAME
        customer_name     TYPE c LENGTH 25,
        "! Used for primitive type DISCOUNT
        discount          TYPE p LENGTH 3 DECIMALS 2,
        "! Used for primitive type DISCOUNT_AMOUNT_C
        discount_amount_c TYPE c LENGTH 5,
        "! Used for primitive type DISCOUNT_AMOUNT_V
        discount_amount_v TYPE p LENGTH 9 DECIMALS 3,
        "! Used for primitive type ID
        id                TYPE c LENGTH 10,
        "! Used for primitive type IS_PAID
        is_paid           TYPE abap_bool,
      END OF tys_types_for_prim_types.

    TYPES:
      "! <p class="shorttext synchronized">Parameters of function ZZ1_CUSTOMERINVOICE98Sap_upsert</p>
      "! <em>with the internal name</em> ZZ_1_CUSTOMERINVOICE_98_SA
      BEGIN OF tys_parameters_1,
        "! ID
        id                TYPE c LENGTH 10,
        "! CustomerID
        customer_id       TYPE c LENGTH 8,
        "! CustomerName
        customer_name     TYPE c LENGTH 25,
        "! Amount_V
        amount_v          TYPE p LENGTH 9 DECIMALS 3,
        "! Amount_C
        amount_c          TYPE c LENGTH 5,
        "! Discount
        discount          TYPE p LENGTH 3 DECIMALS 2,
        "! DiscountAmount_V
        discount_amount_v TYPE p LENGTH 9 DECIMALS 3,
        "! DiscountAmount_C
        discount_amount_c TYPE c LENGTH 5,
        "! IsPaid
        is_paid           TYPE abap_bool,
      END OF tys_parameters_1,
      "! <p class="shorttext synchronized">List of TYS_PARAMETERS_1</p>
      tyt_parameters_1 TYPE STANDARD TABLE OF tys_parameters_1 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">I_CurrencyTextType</p>
      BEGIN OF tys_i_currency_text_type,
        "! <em>Key property</em> Language
        language            TYPE c LENGTH 2,
        "! <em>Key property</em> Currency
        currency            TYPE c LENGTH 5,
        "! CurrencyName
        currency_name       TYPE c LENGTH 40,
        "! CurrencyShortName
        currency_short_name TYPE c LENGTH 15,
      END OF tys_i_currency_text_type,
      "! <p class="shorttext synchronized">List of I_CurrencyTextType</p>
      tyt_i_currency_text_type TYPE STANDARD TABLE OF tys_i_currency_text_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">I_CurrencyType</p>
      BEGIN OF tys_i_currency_type,
        "! <em>Key property</em> Currency
        currency                   TYPE c LENGTH 5,
        "! Currency_Text
        currency_text              TYPE c LENGTH 40,
        "! Decimals
        decimals                   TYPE int1,
        "! CurrencyISOCode
        currency_isocode           TYPE c LENGTH 3,
        "! AlternativeCurrencyKey
        alternative_currency_key   TYPE c LENGTH 3,
        "! IsPrimaryCurrencyForISOCrcy
        is_primary_currency_for_is TYPE abap_bool,
      END OF tys_i_currency_type,
      "! <p class="shorttext synchronized">List of I_CurrencyType</p>
      tyt_i_currency_type TYPE STANDARD TABLE OF tys_i_currency_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">I_LanguageType</p>
      BEGIN OF tys_i_language_type,
        "! <em>Key property</em> Language
        language         TYPE c LENGTH 2,
        "! Language_Text
        language_text    TYPE c LENGTH 16,
        "! LanguageISOCode
        language_isocode TYPE c LENGTH 2,
      END OF tys_i_language_type,
      "! <p class="shorttext synchronized">List of I_LanguageType</p>
      tyt_i_language_type TYPE STANDARD TABLE OF tys_i_language_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">P_Scbo_UserType</p>
      BEGIN OF tys_p_scbo_user_type,
        "! <em>Key property</em> name
        name        TYPE c LENGTH 12,
        "! description
        description TYPE c LENGTH 80,
      END OF tys_p_scbo_user_type,
      "! <p class="shorttext synchronized">List of P_Scbo_UserType</p>
      tyt_p_scbo_user_type TYPE STANDARD TABLE OF tys_p_scbo_user_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">ZZ1_CUSTOMERINVOICE98Type</p>
      BEGIN OF tys_zz_1_customerinvoice_98_ty,
        "! <em>Key property</em> SAP_UUID
        sap_uuid                   TYPE sysuuid_x16,
        "! ID
        id                         TYPE c LENGTH 10,
        "! CustomerID
        customer_id                TYPE c LENGTH 8,
        "! CustomerName
        customer_name              TYPE c LENGTH 25,
        "! Amount_V
        amount_v                   TYPE p LENGTH 9 DECIMALS 3,
        "! Amount_C
        amount_c                   TYPE c LENGTH 5,
        "! Amount_C_Text
        amount_c_text              TYPE c LENGTH 40,
        "! Discount
        discount                   TYPE p LENGTH 3 DECIMALS 2,
        "! DiscountAmount_V
        discount_amount_v          TYPE p LENGTH 9 DECIMALS 3,
        "! DiscountAmount_C
        discount_amount_c          TYPE c LENGTH 5,
        "! DiscountAmount_C_Text
        discount_amount_c_text     TYPE c LENGTH 40,
        "! IsPaid
        is_paid                    TYPE abap_bool,
        "! SAP_CreatedDateTime
        sap_created_date_time      TYPE timestampl,
        "! SAP_CreatedByUser
        sap_created_by_user        TYPE c LENGTH 12,
        "! SAP_CreatedByUser_Text
        sap_created_by_user_text   TYPE c LENGTH 80,
        "! SAP_LastChangedDateTime
        sap_last_changed_date_time TYPE timestampl,
        "! SAP_LastChangedByUser
        sap_last_changed_by_user   TYPE c LENGTH 12,
        "! SAP_LastChangedByUser_Text
        sap_last_changed_by_user_t TYPE c LENGTH 80,
      END OF tys_zz_1_customerinvoice_98_ty,
      "! <p class="shorttext synchronized">List of ZZ1_CUSTOMERINVOICE98Type</p>
      tyt_zz_1_customerinvoice_98_ty TYPE STANDARD TABLE OF tys_zz_1_customerinvoice_98_ty WITH DEFAULT KEY.


    CONSTANTS:
      "! <p class="shorttext synchronized">Internal Names of the entity sets</p>
      BEGIN OF gcs_entity_set,
        "! I_Currency
        "! <br/> Collection of type 'I_CurrencyType'
        i_currency              TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'I_CURRENCY',
        "! I_CurrencyText
        "! <br/> Collection of type 'I_CurrencyTextType'
        i_currency_text         TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'I_CURRENCY_TEXT',
        "! I_Language
        "! <br/> Collection of type 'I_LanguageType'
        i_language              TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'I_LANGUAGE',
        "! P_Scbo_User
        "! <br/> Collection of type 'P_Scbo_UserType'
        p_scbo_user             TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'P_SCBO_USER',
        "! ZZ1_CUSTOMERINVOICE98
        "! <br/> Collection of type 'ZZ1_CUSTOMERINVOICE98Type'
        zz_1_customerinvoice_98 TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'ZZ_1_CUSTOMERINVOICE_98',
      END OF gcs_entity_set .

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal Names of the function imports</p>
      BEGIN OF gcs_function_import,
        "! ZZ1_CUSTOMERINVOICE98Sap_upsert
        "! <br/> See structure type {@link ..tys_parameters_1} for the parameters
        zz_1_customerinvoice_98_sa TYPE /iwbep/if_cp_runtime_types=>ty_operation_name VALUE 'ZZ_1_CUSTOMERINVOICE_98_SA',
      END OF gcs_function_import.

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal Names of the bound functions</p>
      BEGIN OF gcs_bound_function,
         "! Dummy field - Structure must not be empty
         dummy TYPE int1 VALUE 0,
      END OF gcs_bound_function.

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal names for complex types</p>
      BEGIN OF gcs_complex_type,
         "! Dummy field - Structure must not be empty
         dummy TYPE int1 VALUE 0,
      END OF gcs_complex_type.

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal names for entity types</p>
      BEGIN OF gcs_entity_type,
        "! <p class="shorttext synchronized">Internal names for I_CurrencyTextType</p>
        "! See also structure type {@link ..tys_i_currency_text_type}
        BEGIN OF i_currency_text_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_Currency
            to_currency TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_CURRENCY',
            "! to_Language
            to_language TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_LANGUAGE',
          END OF navigation,
        END OF i_currency_text_type,
        "! <p class="shorttext synchronized">Internal names for I_CurrencyType</p>
        "! See also structure type {@link ..tys_i_currency_type}
        BEGIN OF i_currency_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF i_currency_type,
        "! <p class="shorttext synchronized">Internal names for I_LanguageType</p>
        "! See also structure type {@link ..tys_i_language_type}
        BEGIN OF i_language_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF i_language_type,
        "! <p class="shorttext synchronized">Internal names for P_Scbo_UserType</p>
        "! See also structure type {@link ..tys_p_scbo_user_type}
        BEGIN OF p_scbo_user_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF p_scbo_user_type,
        "! <p class="shorttext synchronized">Internal names for ZZ1_CUSTOMERINVOICE98Type</p>
        "! See also structure type {@link ..tys_zz_1_customerinvoice_98_ty}
        BEGIN OF zz_1_customerinvoice_98_ty,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_Amount
            to_amount                  TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_AMOUNT',
            "! to__Amount
            to_amount_2                TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_AMOUNT_2',
            "! to_DiscountAmount
            to_discount_amount         TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_DISCOUNT_AMOUNT',
            "! to__DiscountAmount
            to_discount_amount_2       TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_DISCOUNT_AMOUNT_2',
            "! to_SAPSysAdminDataChangeUser
            to_sapsys_admin_data_chang TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_SAPSYS_ADMIN_DATA_CHANG',
            "! to_SAPSysAdminDataCreateUser
            to_sapsys_admin_data_creat TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_SAPSYS_ADMIN_DATA_CREAT',
          END OF navigation,
        END OF zz_1_customerinvoice_98_ty,
      END OF gcs_entity_type.


    METHODS /iwbep/if_v4_mp_basic_pm~define REDEFINITION.


  PRIVATE SECTION.

    "! <p class="shorttext synchronized">Model</p>
    DATA mo_model TYPE REF TO /iwbep/if_v4_pm_model.


    "! <p class="shorttext synchronized">Define I_CurrencyTextType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_i_currency_text_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define I_CurrencyType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_i_currency_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define I_LanguageType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_i_language_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define P_Scbo_UserType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_p_scbo_user_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define ZZ1_CUSTOMERINVOICE98Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_zz_1_customerinvoice_98_ty RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define ZZ1_CUSTOMERINVOICE98Sap_upsert</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_zz_1_customerinvoice_98_sa RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define all primitive types</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS define_primitive_types RAISING /iwbep/cx_gateway.

ENDCLASS.


CLASS zsc_d425_invoices_98 IMPLEMENTATION.

  METHOD /iwbep/if_v4_mp_basic_pm~define.

    mo_model = io_model.
    mo_model->set_schema_namespace( 'ZZ1_CUSTOMERINVOICE98_CDS' ) ##NO_TEXT.

    def_i_currency_text_type( ).
    def_i_currency_type( ).
    def_i_language_type( ).
    def_p_scbo_user_type( ).
    def_zz_1_customerinvoice_98_ty( ).
    def_zz_1_customerinvoice_98_sa( ).
    define_primitive_types( ).

  ENDMETHOD.


  METHOD def_i_currency_text_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'I_CURRENCY_TEXT_TYPE'
                                    is_structure              = VALUE tys_i_currency_text_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'I_CurrencyTextType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'I_CURRENCY_TEXT' ).
    lo_entity_set->set_edm_name( 'I_CurrencyText' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'LANGUAGE' ).
    lo_primitive_property->set_edm_name( 'Language' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CURRENCY' ).
    lo_primitive_property->set_edm_name( 'Currency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CURRENCY_NAME' ).
    lo_primitive_property->set_edm_name( 'CurrencyName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CURRENCY_SHORT_NAME' ).
    lo_primitive_property->set_edm_name( 'CurrencyShortName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_CURRENCY' ).
    lo_navigation_property->set_edm_name( 'to_Currency' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'I_CURRENCY_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_LANGUAGE' ).
    lo_navigation_property->set_edm_name( 'to_Language' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'I_LANGUAGE_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).

  ENDMETHOD.


  METHOD def_i_currency_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'I_CURRENCY_TYPE'
                                    is_structure              = VALUE tys_i_currency_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'I_CurrencyType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'I_CURRENCY' ).
    lo_entity_set->set_edm_name( 'I_Currency' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'CURRENCY' ).
    lo_primitive_property->set_edm_name( 'Currency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CURRENCY_TEXT' ).
    lo_primitive_property->set_edm_name( 'Currency_Text' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DECIMALS' ).
    lo_primitive_property->set_edm_name( 'Decimals' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Byte' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CURRENCY_ISOCODE' ).
    lo_primitive_property->set_edm_name( 'CurrencyISOCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ALTERNATIVE_CURRENCY_KEY' ).
    lo_primitive_property->set_edm_name( 'AlternativeCurrencyKey' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_PRIMARY_CURRENCY_FOR_IS' ).
    lo_primitive_property->set_edm_name( 'IsPrimaryCurrencyForISOCrcy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_i_language_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'I_LANGUAGE_TYPE'
                                    is_structure              = VALUE tys_i_language_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'I_LanguageType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'I_LANGUAGE' ).
    lo_entity_set->set_edm_name( 'I_Language' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'LANGUAGE' ).
    lo_primitive_property->set_edm_name( 'Language' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LANGUAGE_TEXT' ).
    lo_primitive_property->set_edm_name( 'Language_Text' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 16 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LANGUAGE_ISOCODE' ).
    lo_primitive_property->set_edm_name( 'LanguageISOCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_p_scbo_user_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'P_SCBO_USER_TYPE'
                                    is_structure              = VALUE tys_p_scbo_user_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'P_Scbo_UserType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'P_SCBO_USER' ).
    lo_entity_set->set_edm_name( 'P_Scbo_User' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'NAME' ).
    lo_primitive_property->set_edm_name( 'name' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DESCRIPTION' ).
    lo_primitive_property->set_edm_name( 'description' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 80 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_zz_1_customerinvoice_98_ty.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'ZZ_1_CUSTOMERINVOICE_98_TY'
                                    is_structure              = VALUE tys_zz_1_customerinvoice_98_ty( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'ZZ1_CUSTOMERINVOICE98Type' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'ZZ_1_CUSTOMERINVOICE_98' ).
    lo_entity_set->set_edm_name( 'ZZ1_CUSTOMERINVOICE98' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'SAP_UUID' ).
    lo_primitive_property->set_edm_name( 'SAP_UUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ID' ).
    lo_primitive_property->set_edm_name( 'ID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_ID' ).
    lo_primitive_property->set_edm_name( 'CustomerID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_NAME' ).
    lo_primitive_property->set_edm_name( 'CustomerName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 25 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'AMOUNT_V' ).
    lo_primitive_property->set_edm_name( 'Amount_V' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 16 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'AMOUNT_C' ).
    lo_primitive_property->set_edm_name( 'Amount_C' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'AMOUNT_C_TEXT' ).
    lo_primitive_property->set_edm_name( 'Amount_C_Text' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DISCOUNT' ).
    lo_primitive_property->set_edm_name( 'Discount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DISCOUNT_AMOUNT_V' ).
    lo_primitive_property->set_edm_name( 'DiscountAmount_V' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 16 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DISCOUNT_AMOUNT_C' ).
    lo_primitive_property->set_edm_name( 'DiscountAmount_C' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DISCOUNT_AMOUNT_C_TEXT' ).
    lo_primitive_property->set_edm_name( 'DiscountAmount_C_Text' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_PAID' ).
    lo_primitive_property->set_edm_name( 'IsPaid' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SAP_CREATED_DATE_TIME' ).
    lo_primitive_property->set_edm_name( 'SAP_CreatedDateTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 7 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SAP_CREATED_BY_USER' ).
    lo_primitive_property->set_edm_name( 'SAP_CreatedByUser' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SAP_CREATED_BY_USER_TEXT' ).
    lo_primitive_property->set_edm_name( 'SAP_CreatedByUser_Text' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 80 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SAP_LAST_CHANGED_DATE_TIME' ).
    lo_primitive_property->set_edm_name( 'SAP_LastChangedDateTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 7 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SAP_LAST_CHANGED_BY_USER' ).
    lo_primitive_property->set_edm_name( 'SAP_LastChangedByUser' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SAP_LAST_CHANGED_BY_USER_T' ).
    lo_primitive_property->set_edm_name( 'SAP_LastChangedByUser_Text' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 80 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_AMOUNT' ).
    lo_navigation_property->set_edm_name( 'to_Amount' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'I_CURRENCY_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_AMOUNT_2' ).
    lo_navigation_property->set_edm_name( 'to__Amount' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'I_CURRENCY_TEXT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_DISCOUNT_AMOUNT' ).
    lo_navigation_property->set_edm_name( 'to_DiscountAmount' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'I_CURRENCY_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_DISCOUNT_AMOUNT_2' ).
    lo_navigation_property->set_edm_name( 'to__DiscountAmount' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'I_CURRENCY_TEXT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_SAPSYS_ADMIN_DATA_CHANG' ).
    lo_navigation_property->set_edm_name( 'to_SAPSysAdminDataChangeUser' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'P_SCBO_USER_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_SAPSYS_ADMIN_DATA_CREAT' ).
    lo_navigation_property->set_edm_name( 'to_SAPSysAdminDataCreateUser' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'P_SCBO_USER_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).

  ENDMETHOD.


  METHOD def_zz_1_customerinvoice_98_sa.

    DATA:
      lo_function        TYPE REF TO /iwbep/if_v4_pm_function,
      lo_function_import TYPE REF TO /iwbep/if_v4_pm_func_imp,
      lo_parameter       TYPE REF TO /iwbep/if_v4_pm_func_param,
      lo_return          TYPE REF TO /iwbep/if_v4_pm_func_return.


    lo_function = mo_model->create_function( 'ZZ_1_CUSTOMERINVOICE_98_SA' ).
    lo_function->set_edm_name( 'ZZ1_CUSTOMERINVOICE98Sap_upsert' ) ##NO_TEXT.

    lo_function_import = lo_function->create_function_import( 'ZZ_1_CUSTOMERINVOICE_98_SA' ).
    lo_function_import->set_edm_name( 'ZZ1_CUSTOMERINVOICE98Sap_upsert' ) ##NO_TEXT.


    lo_parameter = lo_function->create_parameter( 'ID' ).
    lo_parameter->set_edm_name( 'ID' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'ID' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'CUSTOMER_ID' ).
    lo_parameter->set_edm_name( 'CustomerID' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'CUSTOMER_ID' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'CUSTOMER_NAME' ).
    lo_parameter->set_edm_name( 'CustomerName' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'CUSTOMER_NAME' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'AMOUNT_V' ).
    lo_parameter->set_edm_name( 'Amount_V' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'AMOUNT_V' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'AMOUNT_C' ).
    lo_parameter->set_edm_name( 'Amount_C' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'AMOUNT_C' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'DISCOUNT' ).
    lo_parameter->set_edm_name( 'Discount' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'DISCOUNT' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'DISCOUNT_AMOUNT_V' ).
    lo_parameter->set_edm_name( 'DiscountAmount_V' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'DISCOUNT_AMOUNT_V' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'DISCOUNT_AMOUNT_C' ).
    lo_parameter->set_edm_name( 'DiscountAmount_C' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'DISCOUNT_AMOUNT_C' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'IS_PAID' ).
    lo_parameter->set_edm_name( 'IsPaid' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'IS_PAID' ).
    lo_parameter->set_is_nullable( ).

    lo_return = lo_function->create_return( ).
    lo_return->set_entity_type( 'ZZ_1_CUSTOMERINVOICE_98_TY' ).

  ENDMETHOD.


  METHOD define_primitive_types.

    DATA lo_primitive_type TYPE REF TO /iwbep/if_v4_pm_prim_type.


    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'AMOUNT_C'
                            iv_element             = VALUE tys_types_for_prim_types-amount_c( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'AMOUNT_V'
                            iv_element             = VALUE tys_types_for_prim_types-amount_v( ) ).
    lo_primitive_type->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_type->set_precision( 16 ) ##NUMBER_OK.
    lo_primitive_type->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'CUSTOMER_ID'
                            iv_element             = VALUE tys_types_for_prim_types-customer_id( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'CUSTOMER_NAME'
                            iv_element             = VALUE tys_types_for_prim_types-customer_name( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'DISCOUNT'
                            iv_element             = VALUE tys_types_for_prim_types-discount( ) ).
    lo_primitive_type->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_type->set_precision( 5 ) ##NUMBER_OK.
    lo_primitive_type->set_scale( 2 ) ##NUMBER_OK.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'DISCOUNT_AMOUNT_C'
                            iv_element             = VALUE tys_types_for_prim_types-discount_amount_c( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'DISCOUNT_AMOUNT_V'
                            iv_element             = VALUE tys_types_for_prim_types-discount_amount_v( ) ).
    lo_primitive_type->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_type->set_precision( 16 ) ##NUMBER_OK.
    lo_primitive_type->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'ID'
                            iv_element             = VALUE tys_types_for_prim_types-id( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'IS_PAID'
                            iv_element             = VALUE tys_types_for_prim_types-is_paid( ) ).
    lo_primitive_type->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

  ENDMETHOD.

ENDCLASS.
