CLASS zcl_dependientes_dnavas DEFINITION
  PUBLIC
  INHERITING FROM zcl_empleado_dnavas
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: get_trabajo REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_dependientes_dnavas IMPLEMENTATION.
    METHOD get_trabajo.
    r_value = 'Juan es dependiente y esta en la sección de chico'.
  ENDMETHOD.

ENDCLASS.
