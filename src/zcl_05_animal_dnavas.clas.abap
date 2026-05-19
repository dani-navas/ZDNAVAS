CLASS zcl_05_animal_dnavas DEFINITION  PUBLIC CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS caminar RETURNING VALUE(r_valor) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.


CLASS zcl_05_animal_dnavas IMPLEMENTATION.
  METHOD caminar.
    r_valor = 'El animal camina....'.
  ENDMETHOD.

ENDCLASS.
