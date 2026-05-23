CLASS zcl_04_centro_dnavas DEFINITION PUBLIC INHERITING FROM zcl_04_company_dnavas CREATE PUBLIC .
  PUBLIC SECTION.

    METHODS constructor IMPORTING i_ccompany TYPE string
                                  i_ccentro  TYPE string.

    METHODS get_constructor_CENTRO EXPORTING e_company TYPE string
                                             e_centro  TYPE string.

*Redifinición de metodos:
*-Se puede ampliar el metodo del padre
*-Dentro del metodo hijo se puede llamar con super->method padre con los parametros si se quiere utilizar
*-La visibilidad debe ser la misma en el SECTION tanto para el padre como el hijo
*-En redifinition no se pueden pasar parametros pero si puedes acceder al method.
    METHODS set_company  REDEFINITION.

  PROTECTED SECTION.
    DATA l_ccentro TYPE string.
    DATA l_company_redifinition TYPE string.
  PRIVATE SECTION.
ENDCLASS.


CLASS zcl_04_centro_dnavas IMPLEMENTATION.
  METHOD constructor.
    super->constructor( i_ccompany = i_ccompany ).
    me->l_ccentro = i_ccentro.
   ENDMETHOD.

  METHOD get_constructor_centro.
    e_company = me->l_ccompany.
    e_centro = me->l_ccentro.
  ENDMETHOD.

  METHOD set_company.
    me->l_company_redifinition = 'ERCROS'.
    super->set_company( i_company = me->l_company_redifinition ).
  ENDMETHOD.

ENDCLASS.
