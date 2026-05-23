CLASS zcl_cliente_dnavas DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS set_credit_card_cliente IMPORTING i_credit_card TYPE REF TO zcl_credit_card_dnavas.
    METHODS get_credit_card_cliente RETURNING VALUE(r_credit_card) TYPE REF TO zcl_credit_card_dnavas.

  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA credit_card_cliente TYPE REF TO zcl_credit_card_dnavas.
ENDCLASS.

CLASS zcl_cliente_dnavas IMPLEMENTATION.
  METHOD get_credit_card_cliente.
    r_credit_card = me->credit_card_cliente.
  ENDMETHOD.

  METHOD set_credit_card_cliente.
    me->credit_card_cliente = i_credit_card.
  ENDMETHOD.

ENDCLASS.
