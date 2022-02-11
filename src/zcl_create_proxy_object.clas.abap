CLASS zcl_create_proxy_object DEFINITION
  PUBLIC FINAL CREATE PUBLIC .
  PUBLIC SECTION.
    CLASS-DATA go_client_proxy TYPE REF TO /iwbep/if_cp_client_proxy.
    CLASS-METHODS get_client_proxy
      RETURNING VALUE(ro_client_proxy) TYPE REF TO /iwbep/if_cp_client_proxy.
ENDCLASS.



CLASS ZCL_CREATE_PROXY_OBJECT IMPLEMENTATION.


  METHOD get_client_proxy.

    IF go_client_proxy IS NOT BOUND.

      TRY.

          DATA(lo_http_client) = cl_web_http_client_manager=>create_by_http_destination(
                           cl_http_destination_provider=>create_by_cloud_destination(
                           i_name = 'opnscpportal'
                           i_authn_mode = if_a4c_cp_service=>service_specific ) ).

          go_client_proxy = cl_web_odata_client_factory=>create_v2_remote_proxy(
            EXPORTING
              iv_service_definition_name = 'ZORDER'
              io_http_client             = lo_http_client
              iv_relative_service_root   = '/sap/opu/odata/sap/API_SALES_ORDER_SRV' ).


        CATCH cx_http_dest_provider_error INTO DATA(lx_http_dest_provider_error).
        CATCH cx_web_http_client_error INTO DATA(lx_web_http_client_error).
        CATCH /iwbep/cx_gateway.

      ENDTRY.

    ENDIF.

    ro_client_proxy = go_client_proxy.

  ENDMETHOD.
ENDCLASS.
