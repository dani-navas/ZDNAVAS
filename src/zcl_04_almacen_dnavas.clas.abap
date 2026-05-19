CLASS zcl_04_almacen_dnavas DEFINITION PUBLIC INHERITING FROM zcl_04_centro_dnavas CREATE PUBLIC .
  PUBLIC SECTION.

    METHODS constructor  IMPORTING i_ccompany TYPE string
                                   i_ccentro  TYPE string
                                   i_almacen  TYPE string.

    METHODS GEt_constructor_ALMACEN EXPORTING E_company TYPE string
                                              E_centro  TYPE string
                                              E_almacen TYPE string.

  PROTECTED SECTION.
    DATA l_ccalmacen TYPE string.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_04_almacen_dnavas IMPLEMENTATION.

  METHOD constructor.
    super->constructor( i_ccompany = i_ccompany i_ccentro = i_ccentro ).
    me->l_ccalmacen = i_almacen.
  ENDMETHOD.

  METHOD get_constructor_almacen.
    e_company = me->l_ccompany.
    e_CENTRO = me->l_ccentro.
    e_almacen = me->l_ccalmacen.
  ENDMETHOD.

ENDCLASS.
