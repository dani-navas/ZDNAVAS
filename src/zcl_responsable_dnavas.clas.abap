CLASS zcl_responsable_dnavas DEFINITION
  PUBLIC
  INHERITING FROM zcl_empleado_dnavas
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: get_trabajo REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_responsable_dnavas IMPLEMENTATION.
  METHOD get_trabajo.
    r_value = 'La Anaïs es la responsable de la tienda'.
  ENDMETHOD.

ENDCLASS.
