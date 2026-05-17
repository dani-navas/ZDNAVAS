CLASS zcl_lab_03_emplyee_dnavas DEFINITION  PUBLIC  FINAL  CREATE PUBLIC .
  PUBLIC SECTION.

*Constructor instancia (solo pueden ser de importing)
*Los Constructores de instancia se pasan los datos cada vez que se hace  una instancia a una clase
*los atributos y SOLO ESTÁTICOS solo se acceder hacer a traves de instancia estatica de la clase =>
    METHODS constructor IMPORTING i_employee TYPE string
                                  i_date     TYPE string.

*Constructor estático  = ( AL INIZIALITATION EN ABAP )
*Los Constructores estaticos se pasan los datos SOLO UNA VEZ
*para acceder a los atributos y SOLO ESTÁTICOS!(SOLO EN PÚBLIC SECTION) LOS INSTANCIADOS NO
*los atributos y SOLO ESTÁTICOS solo se acceder hacer a traves de instancia estatica de la clase =>
    CLASS-METHODS class_constructor .

    CLASS-DATA l_SOCIEDAD TYPE string.
    CLASS-DATA l_log TYPE string.


    METHODS get_employee_id EXPORTING ex_employee_id TYPE string
                                      ex_date        TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA l_employee_id TYPE string.
    DATA l_date TYPE string.
ENDCLASS.



CLASS zcl_lab_03_emplyee_dnavas IMPLEMENTATION.

  METHOD class_constructor.
    zcl_lab_03_emplyee_dnavas=>l_sociedad = 'LOGALI GROUP'.
    l_log = |{ l_log }Constructor estático-->|.
  ENDMETHOD.

  METHOD constructor.
    me->l_employee_id = i_employee.
    me->l_date = i_date.

    l_log = |{ l_log }Constructor instanciado{ me->l_employee_id  }-->|.
  ENDMETHOD.

  METHOD get_employee_id.
    ex_employee_id = me->l_employee_id.
    ex_date = me->l_date.
  ENDMETHOD.


ENDCLASS.
