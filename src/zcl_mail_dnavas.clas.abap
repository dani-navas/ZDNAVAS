CLASS zcl_mail_dnavas DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .
  PUBLIC SECTION.

    CLASS-EVENTS new_email EXPORTING VALUE(ev_sbject) TYPE string.
    CLASS-METHODS  evento_mail .

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mail_dnavas IMPLEMENTATION.
  METHOD evento_mail.
    RAISE EVENT new_email EXPORTING ev_sbject = |Email enviado el dia { sy-datum } y hora { cl_abap_context_info=>get_system_time( ) } |.
  ENDMETHOD.

ENDCLASS.
