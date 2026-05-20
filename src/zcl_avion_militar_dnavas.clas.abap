CLASS zcl_avion_militar_dnavas DEFINITION INHERITING FROM zcl_avion_dnavas
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: velocidad_avion REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_avion_militar_dnavas IMPLEMENTATION.
  METHOD velocidad_avion.
    r_value = 'Velocidad avión de pasajeros: 1100 KM/h'.
  ENDMETHOD.

ENDCLASS.
