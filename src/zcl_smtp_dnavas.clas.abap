CLASS zcl_smtp_dnavas DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .
  PUBLIC SECTION.

    CLASS-METHODS on_new_email FOR EVENT new_email OF zcl_mail_dnavas
      IMPORTING ev_sbject.

    CLASS-DATA mt_mail TYPE STANDARD TABLE OF string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_smtp_dnavas IMPLEMENTATION.
  METHOD on_new_email.
    APPEND ev_sbject TO mt_mail.
  ENDMETHOD.

ENDCLASS.
