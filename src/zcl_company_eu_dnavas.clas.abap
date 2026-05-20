CLASS zcl_company_eu_dnavas DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_company_dnavas .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_company_eu_dnavas IMPLEMENTATION.
  METHOD zif_company_dnavas~asignar_company.
    r_value = 'Europa'.
    e_city = 'Madrid'.
  ENDMETHOD.
ENDCLASS.
