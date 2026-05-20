CLASS zcl_avion_pasajero_dnavas DEFINITION INHERITING FROM zcl_avion_dnavas
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: velocidad_avion REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_avion_pasajero_dnavas IMPLEMENTATION.
  METHOD velocidad_avion.
  r_value = 'Velocidad avión militar: 950 KM/H'.
  ENDMETHOD.
ENDCLASS.
