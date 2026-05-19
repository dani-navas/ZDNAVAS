CLASS zcl_agency_dnavas DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_agency_dnavas .
  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.


CLASS zcl_agency_dnavas IMPLEMENTATION.

  METHOD zif_agency_dnavas~set_agency.
    me->zif_agency_dnavas~agency = i_agency.
  ENDMETHOD.

  METHOD zif_agency_dnavas~get_agency.
    r_agency = me->zif_agency_dnavas~agency.
  ENDMETHOD.

  METHOD zif_agency_dnavas~set_adress.
    zif_agency_dnavas~adress = i_adress.
  ENDMETHOD.

ENDCLASS.
