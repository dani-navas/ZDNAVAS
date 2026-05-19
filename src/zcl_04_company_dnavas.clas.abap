CLASS zcl_04_company_dnavas DEFINITION  PUBLIC  CREATE PUBLIC .
  PUBLIC SECTION.

    METHODS constructor IMPORTING i_ccompany TYPE string.

    METHODS: set_company  IMPORTING i_company TYPE string.
    METHODS: get_company  EXPORTING e_company TYPE string.

    METHODS: set_currency IMPORTING i_currency TYPE string.
    METHODS: get_curreNCy EXPORTING e_currency TYPE string.

    METHODS GEt_CONSTRUCTOR_COMPANY EXPORTING e_company TYPE string.

  PROTECTED SECTION.
    DATA l_ccompany TYPE string.
    DATA l_company TYPE string.
    DATA l_currency TYPE waers.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_04_company_dnavas IMPLEMENTATION.
  METHOD get_company.
    e_company = me->l_company.
  ENDMETHOD.

  METHOD get_currency.
    e_currency = me->l_currency.
  ENDMETHOD.

  METHOD set_company.
    me->l_company = i_company.
  ENDMETHOD.

  METHOD set_currency.
    me->l_currency  = i_currency.
  ENDMETHOD.

  METHOD constructor.
    me->l_ccompany = i_ccompany.
  ENDMETHOD.

  METHOD get_constructor_COMPANY.
    e_company = me->l_ccompanY.
  ENDMETHOD.

ENDCLASS.
