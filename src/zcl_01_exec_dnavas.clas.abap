"! <p class="shorttext synchronized" lang="en">Clase Ejecutable</p>
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

**Instancia de la clase cuando la class a la que llamamos esta definida como create private
**hacemos un method estatico y en esta clase llamamos de forma estatica a la clase que queremos llamar
**mediante el metodo creado para devolver la instancia
***  METHOD get_instace.
***    e_instace = new zcl_02_contract_dnavas( ).
***  ENDMETHOD.
*    zcl_02_contract_dnavas=>get_instace( IMPORTING e_instace = data(lr_contract) ).
*
*    data(lr_contract2) =  lr_contract.
*
*
**    DATA(lr_contract) = NEW zcl_02_contract_dnavas( ). "lr_contract referenciamos de tipo class zcl_02_contract_dnavas creamos el objeto e instanciamos  la vez
**    DATA(lr_contract2) = NEW zcl_02_contract_dnavas( ). "lr_contract referenciamos de tipo class zcl_02_contract_dnavas creamos el objeto e instanciamos  la vez
*
*    "lr_contract que es de tipo zcl_02_contract_dnavas hemos llamado al method set_client
*    DATA  lv_process TYPE string.
*
*    "también se puede llamar con "call method lr_contract->set_client"
*    lr_contract->set_client(
*      EXPORTING
*        iv_client   = 'Logali'
*        iv_location = 'Madrid'
*      IMPORTING
*        ev_status   =  DATA(lv_status)
*      CHANGING
*        cv_procees  =  lv_process
*    ).
*
*    lr_contract->get_client( IMPORTING ev_client =  DATA(lv_client) ).
*    lr_contract->get_location( IMPORTING ev_location =  DATA(lv_location)  ).
*
*
*    zcl_02_contract_dnavas=>set_cntr_type( iv_contr_type = 'Contruction' )."llamada a metodo estatico siempre va con "nombre class =>"
*    zcl_02_contract_dnavas=>get_cntr_type( IMPORTING ev_contr_type = DATA(lv_contr_type)  ).
*
*
*    out->write( |{ lv_client }-{ lv_location }-{ lv_status }-{ lv_process } | ).
*    out->write( lv_contr_type ).
*
*    zcl_02_contract_dnavas=>currency = 'USD'. "atributo estatico ya que se ha declarado como class-data
*    zcl_02_contract_dnavas=>currency = zcl_02_contract_dnavas=>cs_currency-jpy. "le asigno la constante como es estatico se debe hacer desde la class
*
*    "Aunque se hayan creado 2 instancias como se ha declara el atributo currency estatico es el mísmo valor para todas las instancias
*    out->write( lr_contract->currency ).
*    out->write( lr_contract2->currency ).
*    out->write( |\n| ). " Esto genera una línea visual de separación
*
**llamada a method funcional directamente desde una variable
**Se puede imprimir directamente o bien meterlo en una variable y lueog hacer lo necesario con él
*    DATA(lv_name_client) = lr_contract->get_name_client( iv_name_client = '01' ).
*    out->write( lv_name_client ).
**     out->write( lr_contract->get_name_client( iv_name_client = '02' ) ) .
*
**Como el types: begin of es estatico debe llamarse desde la clase
*    DATA li_adress TYPE zcl_02_contract_dnavas=>tty_adress.
*    DATA wa_adress TYPE zcl_02_contract_dnavas=>ty_adress.
*
**Devuelve la información del cliente
*    lr_contract->get_adress( EXPORTING iv_client = '02' IMPORTING li_adress = li_adress ).
*    out->write( ' ' ). " Esto genera una línea visual de separación
*    LOOP AT li_adress INTO wa_adress.
*      out->write( |País: { wa_adress-country }\n| &&
*                  |Ciudad: { wa_adress-city }\n| &&
*                  |Región: { wa_adress-region }\n| &&
*                  |Calle: { wa_adress-street }\n| &&
*                  |Nº: { wa_adress-number } | ).
*    ENDLOOP.

*Constructor estático  = ( AL INIZIALITATION EN ABAP )
*Los Constructores estaticos se pasan los datos SOLO UNA VEZ
*    out->write( zcl_lab_03_emplyee_dnavas=>l_log ).

*    DATA i_employee_id TYPE string.
*    DATA i_date TYPE string.
**Los Constructores de instancia se pasan los datos cada vez que se hace  una instancia a una clase
*    DATA(lr_empployee1) = NEW zcl_lab_03_emplyee_dnavas( i_employee = 'Employee 01' i_date = '01-01-2026' ).
*    lr_empployee1->get_employee_id(
*    IMPORTING
*      ex_employee_id = i_employee_id
*      ex_date        = i_date ).
*    out->write( |Empleado: { i_employee_id }\n| &&
*                |Fecha: { i_date }\n| ).
**    out->write( zcl_lab_03_emplyee_dnavas=>l_log  ).
*
*    DATA(lr_empployee2) = NEW zcl_lab_03_emplyee_dnavas( i_employee = 'Employee 02' i_date = '31-12-2026' ).
**    out->write( lr_empployee2->get_employee_id( )  ).
**    out->write( zcl_lab_03_emplyee_dnavas=>l_log ).


*Hago la impresión por pantalla para demostrar:
*1.Constrcutor estático class-method class_constructor solo se ejecuta una vez al inciar automáticamente.
*1.Constrcutor instanciado method constructor se ejecuta por cada instancia hecha a la clase.
*    out->write( zcl_lab_03_emplyee_dnavas=>l_log ).
*    out->write( lr_empployee1->get_employee_id( )  ).
*    out->write( lr_empployee2->get_employee_id( )  ).

*    out->write( zcl_lab_10_constructor_dnavas=>log ).
*    DATA(lr_constructor1) = NEW zcl_lab_10_constructor_dnavas( i_cons = '01' ).
*    out->write( zcl_lab_10_constructor_dnavas=>log ).
*    DATA(lr_constructor2) = NEW zcl_lab_10_constructor_dnavas( i_cons = '02' ).
*    out->write( zcl_lab_10_constructor_dnavas=>log ).
*    DATA(lr_constructor3) = NEW zcl_lab_10_constructor_dnavas( i_cons = '03' ).
*    out->write( zcl_lab_10_constructor_dnavas=>log ).


*Prueba de Herencia:
*La Clase Padre es la zcl_04_company_dnavas
*Clase Hija zcl_04_centro_dnavas hereda todos los methods y atributos excepto los private section de zcl_04_company_dnavas
*Clase Hija zcl_04_almacen_dnavas hereda todos los methods y  atributos excepto los private section de zcl_04_centro_dnavas(a la vez es padre de zcl_04_almacen_dnavas)
*    DATA(lr_company) = NEW zcl_04_company_dnavas( i_ccompany = 'LOGALI' ).
*    DATA(lr_centro)  = NEW zcl_04_centro_dnavas( i_ccompany = 'LOGALI' i_ccentro = 'C100' ).
*    DATA(lr_almacen) = NEW zcl_04_almacen_dnavas( i_ccompany = 'LOGALI' i_ccentro = 'C100' i_almacen = 'A100' ).
*
*    lr_company->set_company( i_company =  'LOGALI COMPANY' ).
*    lr_company->get_company( IMPORTING e_company = DATA(l_company)  ).
*    lr_company->set_currency( i_currency =  'EUR' ).
*    lr_company->get_currency( IMPORTING e_CURRENCY = DATA(l_CURRENCY)  ).
*    OUt->write( |CLASE PADRE COMPANY zcl_04_company_dnavas -->Compañia { l_company }\n| &&
*                |                                   Euro { l_currency } | ) .
*
*    lr_centro->set_company( i_company =  'LOGALI CENTRO' ).
*    lr_centro->get_company( IMPORTING e_company = l_company  ).
*    lr_centro->set_currency( i_currency =  'USD' ).
*    lr_centro->get_currency( IMPORTING e_CURRENCY = l_CURRENCY  ).
*    OUt->write( |CLASE HIJA CENTRO zcl_04_centro_dnavas hereda de zcl_04_company_dnavas-->Compañia { l_company }\n| &&
*                |                                                                         Dólar { l_currency } | ) .
*
*    LR_ALMACEN->set_company( i_company =  'LOGALI ALMACEN' ).
*    LR_ALMACEN->get_company( IMPORTING e_company = l_company  ).
*    LR_ALMACEN->set_currency( i_currency =  'JPY' ).
*    LR_ALMACEN->get_currency( IMPORTING e_CURRENCY = l_CURRENCY  ).
*    OUt->write( |CLASE HIJA ALMACÉN zcl_04_almacen_dnavas hereda de zcl_04_centro_dnavas-->Compañia { l_company }\n| &&
*                |                                                                           Yenes { l_currency } | ) .


**Herencia de constrcutores y atributos
*    lr_company->get_constructor_company( IMPORTING e_company = DATA(l_company) ).
*    OUt->write( |CONSTRUCTOR PADRE zcl_04_company_dnavas-->Compañia:{ l_company } | ) .
*
*    CLEAR l_company.
*    lr_centro->get_constructor_centro(
*      IMPORTING
*        e_company = l_company
*        e_centro  = DATA(l_centro) ).
*    OUt->write( |CLASE HIJA CENTRO zcl_04_centro_dnavas hereda de zcl_04_company_dnavas-->Compañia:{ l_company }-Centro:{ l_centro } | ) .
*
*    CLEAR l_company.
*    CLEAR l_centro.
*    lr_almacen->get_constructor_almacen(
*      IMPORTING
*        e_company = l_company
*        e_centro  = l_centro
*        e_almacen = DATA(l_almacen)
*    ).
*    OUt->write( |CLASE HIJA ALMACÉN zcl_04_almacen_dnavas hereda de zcl_04_centro_dnavas-->Compañia:{ l_company }-Centro:{ l_centro }-Almacén:{ l_almacen }| ) .


*    DATA(lr_animal) = NEW zcl_05_animal_dnavas( ).
*    DATA(lr_leon)   = NEW zcl_05_leon_dnavas( ).
*    out->write( lr_animal->caminar( ) ).
*    out->write( lr_leon->caminar( ) ).

*Narrowing Casting (UP CAST):APUNTA DEL PADRE->HIJO
*Significa que apunta de referencia de la instancia de la Clase PADRE->HIJO( clase hijo)
*Ejemplo: un ANIMAL puede ser un LEON
*Esto sirve por si en un method hijo hemos redifinido el method que la instancia de la clase PADRE pueda utilizarla
*    out->write( |\n| ).
*    lr_animal = lr_leon."Narrowing Casting IMPORTANTE!!: NO ESTA IGUALANDO! Esta apuntando la instancia(PADRE) -> instancia(HIJO)
*    "significa que cuando se ejecute el method caminar de la instancia padre como hemos hecho apuntar al HIJO se ejecutara
*    "el method redifinido en la instancia de la clase HIJA
*    out->write(  |Narrowing Casting| ).
*    out->write( lr_animal->caminar( ) ).
*    out->write( lr_leon->caminar( ) ).


*Widening Casting (DOWN CAST):APUNTA DEL HIJO->PADRE SOLO SE PUEDE HACER SI ANTES SE HA HECHO UN NARROWING CASTING sino sale error CX_SY_MOVE_CAST_ERROR
*Cuando vamos del HIJO->PADRE, hay que poner "?="
*Significa que apunta de referencia de la instancia de la Clase HIJO->PADRE
*En este paso como el mas especifico siempre va a ser el el hijo por eso acaba ejecutnado al hijo
*    out->write( |\n| ).
*Porque estamos intentado hacer un widening casting sin tener un narrowing casting
*Excepción!
*    TRY.
*        lr_leon ?= lr_animal."Widening  Casting IMPORTANTE!!: NO ESTA IGUALANDO! Esta apuntando la instancia(HIJO) -> instancia(PADRE)
*        " da error porque la instancia HIJA no puede apuntar al PADRE
*      CATCH cx_sy_move_cast_error."CLASE ERROR
*        out->write( 'Error en Widening Cating' ).
*        RETURN  .
*    ENDTRY.
*
*    out->write(  |Widening Casting| ).
*    out->write( lr_animal->caminar( ) ).
*    out->write( lr_leon->caminar( ) ).
*--------

**Llamando los metodos de la interface
*    DATA(lo_agency) = NEW zcl_agency_dnavas( ).
*    lo_agency->zif_agency_dnavas~set_agency( i_agency = 'LOGALI AGENCY' ).
*    out->write( lo_agency->zif_agency_dnavas~get_agency( ) ).
*    zcl_agency_dnavas=>zif_agency_dnavas~set_adress( i_adress = 'C/ Valencia, 46 3-A' ).

*Multiple interfaces
*    data(lo_unit) = new zcl_unidad_medida_dnavas( ).
*    data l_unit type zfloat_arb VALUE 23.
*    lo_unit->set_unit( i_unit = l_unit ) .
*    out->write(  | Metros: { l_unit } | ).
*    out->write( | Conversor a centimetros: { lo_unit->zif_ue_unit_dnavas~conversor_ue_unit_centrimetros( ) } |  ).
*    out->write( | Conversor a pulgadas: {  lo_unit->zif_en_unit_dnavas~conversor_en_unit_pulgadas( ) } | ).

*Interfaces Anidadas
    data(lo_centro_almacen) = new zcl_centro_almacen_dnavas( ).
    lo_centro_almacen->zif_centro_dnavas~set_centro( i_centro = 'C100' ).
*Ahora se utiliza el ALIAS "almacen"
    lo_centro_almacen->zif_centro_dnavas~almacen(
      EXPORTING

        i_almacen = 'A100'
      IMPORTING
        e_value   = DATA(E_VALUE)
    ).
    OUT->write( E_VALUE ).

  ENDMETHOD.
ENDCLASS.
