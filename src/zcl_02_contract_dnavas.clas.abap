CLASS zcl_02_contract_dnavas DEFINITION PUBLIC FINAL CREATE public.
  PUBLIC SECTION. "puede acceder cualquier class
*Las constants són estaticos por defecto
    CONSTANTS: BEGIN OF cs_currency,
                 usd TYPE currencysap VALUE 'USD',
                 eur TYPE currencysap VALUE 'EUR',
                 jpy TYPE currencysap VALUE 'JPY',
               END OF cs_currenCy.

    CONSTANTS aud TYPE currencysap VALUE 'AUD'.

*Los types son estaticos por defecto
    TYPES: BEGIN OF ty_adress,
             country     TYPE string,
             city        TYPE string,
             postal_code TYPE string,
             region      TYPE string,
             street      TYPE string,
             number      TYPE string,
           END OF ty_adress.
    TYPES: tty_adress TYPE TABLE OF ty_adress .

    DATA wa_adress TYPE ty_adress. "atributo instancia

    CLASS-DATA currency TYPE currencysap .  "atributo estatico las estaticas siempre empiezan por CLASS-DATA
    CLASS-DATA empresa  TYPE string READ-ONLY VALUE 'Logali Group' ."Variable estatico solo de lectura no se puede cambiar el valor y solo puede hacer en el PUBLIC SECTION


" si en el parametro del method se pone la palabra VALUE(parámetro) se le pasa el valor por valor y no por referencia
*Diferencia:
*1:VALUE(parámetro) crea una copia local, protegiendo la variable original de cambios el valor sigue siendo el original
*2:PARÁMETRO el puntero de memoria, reflejando cualquier cambio inmediatamente al parámetro y el valor cambia
    METHODS  set_client IMPORTING VALUE(iv_client)   TYPE string
                                  VALUE(iv_location) TYPE string OPTIONAL "se puede añadir que el parámetro sea opcional
                        EXPORTING VALUE(ev_status)   TYPE string
                        CHANGING  VALUE(cv_procees)  TYPE string .


*Creación de method funcional, a diferencia de otros metohd este directamente puedes recuperar el valor desde una variable
    METHODS get_name_client IMPORTING iv_name_client        TYPE string
                            RETURNING VALUE(rV_name_client) TYPE string.


    METHODS get_client EXPORTING ev_client TYPE string. "METHODS de instancia
    METHODS get_location EXPORTING ev_location TYPE string. "METHODS de instancia

    CLASS-METHODS: set_cntr_type IMPORTING iv_contr_type TYPE string, "method estatico siempre empieza por CLASS-METHODS
      get_cntr_type EXPORTING ev_contr_type TYPE string.


    METHODS set_adress    IMPORTING li_adress TYPE tty_adress.

    METHODS get_adress    IMPORTING iv_client TYPE string
                          EXPORTING li_adress TYPE  tty_adress.


    METHODS set_sales_org IMPORTING sales_org TYPE string
                          EXPORTING lt_adress TYPE tty_adress.

    METHODS get_sales_org EXPORTING sales_org TYPE string.


   CLASS-METHODS geT_instace EXPORTING e_instace type ref to zcl_02_contract_dnavas.


  PROTECTED SECTION. "pueden acceder la class general y los hijos
    DATA creation_date TYPE string. "atributo estancia

  PRIVATE SECTION. "solo la class general
    DATA client TYPE string."atributo instancia
    DATA location TYPE string."atributo instancia
    CLASS-DATA cntr_type TYPE string."atributo estatico
    DATA sales_org TYPE string.
ENDCLASS.



CLASS zcl_02_contract_dnavas IMPLEMENTATION.

  METHOD set_client.
    client = iv_client.
    ev_status = 'STATUS:OK'.
    cv_procees = 'PROCESS:OK'.

    IF iv_location IS SUPPLIED. "el supplied indica si un parámetro del method se ha proporcionado o no
      location = 'Localización:SI'.
    ELSE.
      location =  'Localización:NO' .
    ENDIF.

  ENDMETHOD.

  METHOD get_client.
    ev_client =  client.


  ENDMETHOD.

  METHOD get_cntr_type.
    ev_contr_type = cntr_type.
  ENDMETHOD.

  METHOD set_cntr_type.
    cntr_type = iv_contr_type.
  ENDMETHOD.

  METHOD get_location.
    ev_location = location.
  ENDMETHOD.

  METHOD get_name_client.
    CASE iv_name_client.
      WHEN '01'.
        rv_name_client = 'Cliente 01'.
      WHEN '02'.
        rv_name_client = 'Cliente 02'.
      WHEN '03'.
        rv_name_client = 'Cliente 03'.
    ENDCASE.
  ENDMETHOD.

  METHOD get_adress.

    DATA wa_adress TYPE ty_adress.

    CASE iv_client .
      WHEN '01'.
        WA_adreSs-country     = 'España'.
        WA_adress-city        = 'Madrid'.
        wa_adress-postal_code = '28001'.
        wa_adress-region      = 'Comunidad de Madrid'.
        wa_adress-street      = 'Calle Álcala'.
        wa_adress-number      = '28, 5-E'.
        APPEND wa_adress TO li_adress.
      WHEN '02'.
        WA_adreSs-country     = 'España'.
        WA_adress-city        = 'Barcelona'.
        wa_adress-postal_code = '25001'.
        wa_adress-region      = 'Cataluña'.
        wa_adress-street      = 'Calle Europa'.
        wa_adress-number      = '96, 1-A'.
        APPEND wa_adress TO li_adress.
      WHEN '03'.
        WA_adreSs-country     = 'España'.
        WA_adress-city        = 'Sevilla'.
        wa_adress-postal_code = '05200'.
        wa_adress-region      = 'Andalucia'.
        wa_adress-street      = 'Calle Velazquez'.
        wa_adress-number      = '20, 3-B'.
        APPEND wa_adress TO li_adress.
    ENDCASE.
  ENDMETHOD.

  METHOD get_sales_org.
    sales_org = me->sales_org.
  ENDMETHOD.

  METHOD set_sales_org.
    me->sales_org = sales_org.

    CLEAR lt_adress.
    me->get_adress(
      EXPORTING
        iv_client = '01'
      IMPORTING
        li_adress = lt_adress ).
  ENDMETHOD.

  METHOD set_adress.

  ENDMETHOD.

  METHOD get_instace.
    e_instace = new zcl_02_contract_dnavas( ).
  ENDMETHOD.

ENDCLASS.
