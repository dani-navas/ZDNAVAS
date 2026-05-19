CLASS zcl_unidad_medida_dnavas DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_ue_unit_dnavas.
    INTERFACES zif_en_unit_dnavas .

    METHODS set_unit IMPORTING i_unit TYPE zfloat_arb.

  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA l_unit TYPE zfloat_arb.
ENDCLASS.



CLASS zcl_unidad_medida_dnavas IMPLEMENTATION.

  METHOD zif_ue_unit_dnavas~conversor_ue_unit_centrimetros.
    r_value = l_unit * 100.
  ENDMETHOD.
  METHOD zif_en_unit_dnavas~conversor_en_unit_pulgadas.
    r_value = l_unit * '39.37'.
  ENDMETHOD.
  METHOD set_unit.
    l_unit = i_unit.
  ENDMETHOD.

ENDCLASS.
