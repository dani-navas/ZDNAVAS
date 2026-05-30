INTERFACE zif_centro_dnavas
  PUBLIC .
  METHODS set_centro IMPORTING i_centro TYPE string.
  INTERFACES zif_centro_almacen_dnavas.

  "Se le puede asignar un ALIAS los metodos de la interface
  ALIASES almacen FOR zif_centro_almacen_dnavas~almacen.
ENDINTERFACE.
