INTERFACE zif_centro_almacen_dnavas
  PUBLIC .
  METHODS almacen  IMPORTING i_almacen TYPE string
                   EXPORTING e_value   TYPE string.
ENDINTERFACE.
