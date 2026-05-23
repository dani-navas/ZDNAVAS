CLASS zcl_motor_dnavas DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .
  PUBLIC SECTION.

    DATA motor TYPE string.
    METHODS set_motor IMPORTING i_motor TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_motor_dnavas IMPLEMENTATION.
  METHOD set_motor.
    me->motor = i_motor.
  ENDMETHOD.

ENDCLASS.
