CLASS zcl_banco_cliente_dnavas DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .
  PUBLIC SECTION.
    INTERFACES zif_banco_dnavas .

    METHODS ON_notificacion  FOR EVENT  notificacion OF zif_banco_dnavas
      IMPORTING sender.

    METHODS transferencias IMPORTING r_iban TYPE i.

    DATA notificacion TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA l_iban TYPE i.
ENDCLASS.



CLASS zcl_banco_cliente_dnavas IMPLEMENTATION.
  METHOD on_notificacion.
    CASE l_iban.
      WHEN 1.
        me->notificacion =  |Transferencia a IBAN: { sender->iban1 }, fecha:{ sy-datum }, hora:{ sy-uzeit } |.
      WHEN 2.
        me->notificacion = |Transferencia a IBAN: { sender->iban2 }, fecha:{ sy-datum }, hora:{ sy-uzeit } |.
      WHEN 3.
        me->notificacion = |Transferencia a IBAN: { sender->iban3 }, fecha:{ sy-datum }, hora:{ sy-uzeit } |.
      WHEN 4.
        me->notificacion = |Transferencia a IBAN: { sender->iban4 }, fecha:{ sy-datum }, hora:{ sy-uzeit } |.
      WHEN 5.
        me->notificacion = |Transferencia a IBAN: { sender->iban5 }, fecha:{ sy-datum }, hora:{ sy-uzeit } |.
    ENDCASE.
  ENDMETHOD.

  METHOD transferencias.
    me->l_iban += r_iban.
  ENDMETHOD.

ENDCLASS.
