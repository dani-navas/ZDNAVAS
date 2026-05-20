CLASS zcl_company_usa_dnavas DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_company_dnavas .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_company_usa_dnavas IMPLEMENTATION.


  METHOD zif_company_dnavas~asignar_company.
    r_value = 'Estado Unidos'.
    e_city = 'Texas'.
  ENDMETHOD.
ENDCLASS.
