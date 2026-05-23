CLASS zcl_coche_dnavas DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .
  PUBLIC SECTION.

    METHODS get_motor   IMPORTING I_MOTOR TYPE REF TO zcl_motor_dnavas
                        RETURNING VALUE(R_VALUE) TYPE STRING.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_coche_dnavas IMPLEMENTATION.
  METHOD get_motor.
    R_VALUE =   |El coche tiene el motor {  i_motor->motor }|   .
  ENDMETHOD.

ENDCLASS.
