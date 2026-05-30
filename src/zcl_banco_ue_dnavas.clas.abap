CLASS zcl_banco_ue_dnavas DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_banco_dnavas .
    METHODS notificar RETURNING VALUE(r_notificacion) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.


CLASS zcl_banco_ue_dnavas IMPLEMENTATION.
  METHOD notificar.
    r_notificacion = | Levantamiento de evento de notificaciones: {  sy-datum }-{ sy-uzeit } |.
    RAISE EVENT zif_banco_dnavas~notificacion.
  ENDMETHOD.

ENDCLASS.
