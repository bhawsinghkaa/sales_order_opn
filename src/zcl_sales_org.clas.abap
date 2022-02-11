CLASS zcl_sales_org DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_rap_query_provider.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_SALES_ORG IMPLEMENTATION.


  METHOD if_rap_query_provider~select.

    DATA: lt_output_data    TYPE TABLE OF zd_sales_org,
          lt_business_data  TYPE TABLE OF za_salesorder,
          lo_http_client    TYPE REF TO if_web_http_client,
          lo_client_proxy   TYPE REF TO /iwbep/if_cp_client_proxy,
          lo_request        TYPE REF TO /iwbep/if_cp_request_read_list,
          lo_response       TYPE REF TO /iwbep/if_cp_response_read_lst,
          lo_filter         TYPE REF TO if_rap_query_filter,
          lv_lines          TYPE int8,
          lv_top            TYPE i,
          lv_skip           TYPE i,
          lo_paging         TYPE REF TO if_rap_query_paging,
          lo_filter_factory TYPE REF TO /iwbep/if_cp_filter_factory,
          lo_range_temp     TYPE REF TO /iwbep/if_cp_filter_node,
          lo_range_node     TYPE REF TO /iwbep/if_cp_filter_node,
          lr_filter_range   TYPE if_rap_query_filter=>tt_name_range_pairs.

    TRY.

        lo_client_proxy = zcl_create_proxy_object=>get_client_proxy( ).
        IF lo_client_proxy IS BOUND.

          " Navigate to the resource and create a request for the read operation
          lo_request = lo_client_proxy->create_resource_for_entity_set( 'A_SALESORDER' )->create_request_for_read( ).

          "Get Srt Elements
          DATA(lo_sort) = io_request->get_sort_elements(  ).

          "Paging
          lo_paging = io_request->get_paging(  ).
          lv_top = lo_paging->get_page_size(  ).
          IF lv_top LT 0.
            CLEAR lv_top.
          ENDIF.
          lv_skip = lo_paging->get_offset(  ).
          lo_request->set_top( lv_top )->set_skip( lv_skip ).

          "Filter
          lo_filter = io_request->get_filter(  ).
          lr_filter_range = lo_filter->get_as_ranges(  ).
          IF lr_filter_range IS NOT INITIAL.
            lo_filter_factory = lo_request->create_filter_factory(  ).
            LOOP AT lr_filter_range INTO DATA(ls_filter_range).
              lo_range_temp = lo_filter_factory->create_by_range( iv_property_path = ls_filter_range-name it_range = ls_filter_range-range ).
              IF lo_range_node IS INITIAL.
                lo_range_node = lo_range_temp.
              ELSE.
                lo_range_node = lo_range_node->and( lo_range_temp ).
              ENDIF.
            ENDLOOP.
            IF lo_range_node IS BOUND.
              lo_request->set_filter( lo_range_node ).
            ENDIF.
          ENDIF.

          " Execute the request and retrieve the business data
          lo_response = lo_request->execute( ).
          lo_response->get_business_data( IMPORTING et_business_data = lt_business_data ).

          MOVE-CORRESPONDING lt_business_data TO lt_output_data.
          SORT lt_output_data BY SalesOrganization.
          DELETE ADJACENT DUPLICATES FROM lt_output_data COMPARING ALL FIELDS.

          IF io_request->is_total_numb_of_rec_requested( ) = abap_true.
            lv_lines = lines( lt_output_data ).
            io_response->set_total_number_of_records( lv_lines ).
          ENDIF.

          IF io_request->is_data_requested( ) = abap_true.
            io_response->set_data( lt_output_data ).
          ENDIF.

        ENDIF.

      CATCH /iwbep/cx_cp_remote INTO DATA(lx_remote).
        " Handle remote Exception
        " It contains details about the problems of your http(s) connection

      CATCH /iwbep/cx_gateway INTO DATA(lx_gateway).
        " Handle Exception

    ENDTRY.

  ENDMETHOD.
ENDCLASS.
