CLASS zcl_fill_data DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_FILL_DATA IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA: ls_vkorg TYPE zdt_vkorg.
    ls_vkorg-client = sy-mandt.
    ls_vkorg-vkorg = '1020'.
    INSERT zdt_vkorg FROM @ls_vkorg.

  ENDMETHOD.
ENDCLASS.
