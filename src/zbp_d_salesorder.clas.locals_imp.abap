CLASS lcl_buffer DEFINITION.
  PUBLIC SECTION.
    CLASS-DATA gt_buffer TYPE STANDARD TABLE OF zd_salesorder.
ENDCLASS.

CLASS lhc_ZD_SALESORDER DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.
    METHODS create FOR MODIFY
      IMPORTING entities FOR CREATE zd_salesorder.

    METHODS read FOR READ
      IMPORTING keys FOR READ zd_salesorder RESULT result.
ENDCLASS.

CLASS lhc_ZD_SALESORDER IMPLEMENTATION.

  METHOD create.
    LOOP AT entities INTO DATA(ls_entity).
      INSERT ls_entity-%data INTO TABLE lcl_buffer=>gt_buffer.
    ENDLOOP.
  ENDMETHOD.

  METHOD read.
  ENDMETHOD.

ENDCLASS.

CLASS lsc_ZD_SALESORDER DEFINITION INHERITING FROM cl_abap_behavior_saver.
  PROTECTED SECTION.
    METHODS save REDEFINITION.
ENDCLASS.

CLASS lsc_ZD_SALESORDER IMPLEMENTATION.
  METHOD save.

    DATA: ls_business_data TYPE za_salesorder,
          lo_request       TYPE REF TO /iwbep/if_cp_request_create,
          lo_response      TYPE REF TO /iwbep/if_cp_response_create,
          ls_ifrsid        TYPE zdt_ifrsid,
          ls_output        TYPE za_salesorder.

    TRY.
        DATA(lo_client_proxy) = zcl_create_proxy_object=>get_client_proxy( ).
        lo_request = lo_client_proxy->create_resource_for_entity_set( 'A_SALESORDER' )->create_request_for_create( ).
        LOOP AT lcl_buffer=>gt_buffer INTO DATA(ls_buffer).
          MOVE-CORRESPONDING ls_buffer TO ls_business_data.
          lo_request->set_business_data( ls_business_data ).
          lo_response = lo_request->execute( ).
          CALL METHOD lo_response->get_business_data
            IMPORTING
              es_business_data = ls_output.
          ls_ifrsid-vbeln = ls_output-SalesOrder.
          ls_ifrsid-ifrsid = ls_buffer-ifrsid.
          INSERT zdt_ifrsid FROM @ls_ifrsid.
        ENDLOOP.
      CATCH /iwbep/cx_cp_remote INTO DATA(lx_remote).
      CATCH /iwbep/cx_gateway INTO DATA(lx_gateway).
    ENDTRY.
  ENDMETHOD.
ENDCLASS.
