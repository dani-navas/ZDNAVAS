CLASS zcl_timer_dnavas DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .
  PUBLIC SECTION.

    DATA l_user TYPE SY-UNAME.

    EVENTS timer EXPORTING VALUE(ev_hora) TYPE sy-uzeit.

    METHODS constructor.

    METHODS incrementar_hora IMPORTING i_hora TYPE i .
    METHODS limite_hora.

  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA l_contador TYPE sy-uzeit.

ENDCLASS.



CLASS zcl_timer_dnavas IMPLEMENTATION.
  METHOD incrementar_hora.
    me->l_contador += i_hora.
    me->limite_hora( ). "hará saltar el evento cuando el contador pase de 5 segundos
  ENDMETHOD.

  METHOD limite_hora.
    IF l_contador >= 5.
      DATA(l_hora) = cl_abap_context_info=>get_system_time( ).
      RAISE EVENT timer EXPORTING ev_hora = l_hora.        .
    ENDIF.
  ENDMETHOD.

  METHOD constructor.
    me->l_user = SY-UNAME.
  ENDMETHOD.

ENDCLASS.
