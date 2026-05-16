CLASS zcl_01_exec_dnavas DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.
  PUBLIC SECTION.

    INTERFACES  if_oo_adt_classrun .



  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_01_exec_dnavas IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    DATA(lr_contract) = NEW zcl_02_contract_dnavas( ). "lr_contract referenciamos de tipo class zcl_02_contract_dnavas creamos el objeto e instanciamos  la vez
    DATA(lr_contract2) = NEW zcl_02_contract_dnavas( ). "lr_contract referenciamos de tipo class zcl_02_contract_dnavas creamos el objeto e instanciamos  la vez

    "lr_contract que es de tipo zcl_02_contract_dnavas hemos llamado al method set_client
    DATA  lv_process TYPE string.

    "también se puede llamar con "call method lr_contract->set_client"
    lr_contract->set_client(
      EXPORTING
        iv_client   = 'Logali'
        iv_location = 'Madrid'
      IMPORTING
        ev_status   =  DATA(lv_status)
      CHANGING
        cv_procees  =  lv_process
    ).

    lr_contract->get_client( IMPORTING ev_client =  DATA(lv_client) ).
    lr_contract->get_location( IMPORTING ev_location =  DATA(lv_location)  ).


    zcl_02_contract_dnavas=>set_cntr_type( iv_contr_type = 'Contruction' )."llamada a metodo estatico siempre va con "nombre class =>"
    zcl_02_contract_dnavas=>get_cntr_type( IMPORTING ev_contr_type = DATA(lv_contr_type)  ).


    out->write( |{ lv_client }-{ lv_location }-{ lv_status }-{ lv_process } | ).
    out->write( lv_contr_type ).

    zcl_02_contract_dnavas=>currency = 'USD'. "atributo estatico ya que se ha declarado como class-data
    zcl_02_contract_dnavas=>currency = zcl_02_contract_dnavas=>cs_currency-jpy. "le asigno la constante como es estatico se debe hacer desde la class

    "Aunque se hayan creado 2 instancias como se ha declara el atributo currency estatico es el mísmo valor para todas las instancias
    out->write( lr_contract->currency ).
    out->write( lr_contract2->currency ).
    out->write( |\n| ). " Esto genera una línea visual de separación

*llamada a method funcional directamente desde una variable
*Se puede imprimir directamente o bien meterlo en una variable y lueog hacer lo necesario con él
    DATA(lv_name_client) = lr_contract->get_name_client( iv_name_client = '01' ).
    out->write( lv_name_client ).
*     out->write( lr_contract->get_name_client( iv_name_client = '02' ) ) .

*Como el types: begin of es estatico debe llamarse desde la clase
    DATA li_adress TYPE zcl_02_contract_dnavas=>tty_adress.
    DATA wa_adress TYPE zcl_02_contract_dnavas=>ty_adress.

*Devuelve la información del cliente
    lr_contract->get_adress( EXPORTING iv_client = '02' IMPORTING li_adress = li_adress ).
    out->write( ' ' ). " Esto genera una línea visual de separación
    LOOP AT li_adress INTO wa_adress.
      out->write( |País: { wa_adress-country }\n| &&
                  |Ciudad: { wa_adress-city }\n| &&
                  |Región: { wa_adress-region }\n| &&
                  |Calle: { wa_adress-street }\n| &&
                  |Nº: { wa_adress-number } | ).
    ENDLOOP.

   ENDMETHOD.
ENDCLASS.
