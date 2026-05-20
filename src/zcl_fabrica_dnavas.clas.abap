CLASS zcl_fabrica_dnavas DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .
  PUBLIC SECTION.
    METHODS asignar_fabrica IMPORTING i_company      TYPE REF TO zif_company_dnavas
                            RETURNING VALUE(r_value) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA e_city TYPE string.
ENDCLASS.

CLASS zcl_fabrica_dnavas IMPLEMENTATION.
  METHOD asignar_fabrica.
    i_company->asignar_company( IMPORTING e_city = e_city ).
    r_value = |La Fábrica de {  e_city  } esta en { i_company->asignar_company( ) } |.
  ENDMETHOD.

ENDCLASS.
