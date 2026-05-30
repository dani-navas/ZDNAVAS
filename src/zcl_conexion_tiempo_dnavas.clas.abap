CLASS zcl_conexion_tiempo_dnavas DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA l_hora TYPE sy-uzeit.
    DATA l_username TYPE SY-UNAME.

    METHODS handler_zcl_timer FOR EVENT timer OF zcl_timer_dnavas
      IMPORTING ev_hora
                sender.

  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.



CLASS zcl_conexion_tiempo_dnavas IMPLEMENTATION.
  METHOD handler_zcl_timer.
    me->l_hora = ev_hora.
    me->l_username = sender->l_user.
  ENDMETHOD.

ENDCLASS.
