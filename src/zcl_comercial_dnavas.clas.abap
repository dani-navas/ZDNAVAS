CLASS zcl_comercial_dnavas DEFINITION
  PUBLIC
  INHERITING FROM zcl_empleado_dnavas
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: get_trabajo REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_comercial_dnavas IMPLEMENTATION.
  METHOD get_trabajo.
    r_value = 'Tania es Visual y esta en la sección de chica'.
  ENDMETHOD.

ENDCLASS.
