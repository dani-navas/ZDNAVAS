CLASS zcl_centro_almacen_dnavas DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

*    INTERFACES zif_centro_almacen_dnavas .
    INTERFACES zif_centro_dnavas.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA l_centro TYPE string.
ENDCLASS.


CLASS zcl_centro_almacen_dnavas IMPLEMENTATION.
  METHOD zif_centro_dnavas~set_centro.
    l_centro = i_centro.
  ENDMETHOD.

  METHOD  zif_centro_dnavas~almacen.
**Dentro de la interface zif_centro_dnavas esta una interface zif_centro_almacen_dnavas
**pero en el method centro_almacen de la zif_centro_almacen_dnavas le hemos asignados un ALIAS
**ahora solo habra que buscar los alias
**  METHOD zif_centro_almacen_dnavas~almacen.
    e_value = |Centro:{ l_centro }\nAlmacén:{ i_almacen }| .
  ENDMETHOD.



ENDCLASS.
