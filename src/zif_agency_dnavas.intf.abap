INTERFACE zif_agency_dnavas
  PUBLIC .
  DATA agency TYPE string.
  CLASS-DATA adress TYPE string.

  METHODS set_agency IMPORTING i_agency TYPE string.
  METHODS get_agency RETURNING VALUE(r_agency) TYPE string.

  CLASS-METHODS set_adress IMPORTING i_adress TYPE STRing.

ENDINTERFACE.
