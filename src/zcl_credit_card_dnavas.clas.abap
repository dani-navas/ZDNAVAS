CLASS zcl_credit_card_dnavas DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .
  PUBLIC SECTION.

    METHODS set_credit_card IMPORTING i_credit_card TYPE string.
    METHODS get_credit_card RETURNING VALUE(e_credit_card) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA credit_card TYPE string.
ENDCLASS.



CLASS zcl_credit_card_dnavas IMPLEMENTATION.
  METHOD get_credit_card.
    e_credit_card = me->credit_card.
  ENDMETHOD.

  METHOD set_credit_card.
    me->credit_card = i_credit_card.
  ENDMETHOD.

ENDCLASS.
