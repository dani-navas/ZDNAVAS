    CLASS zcl_05_leon_dnavas DEFINITION INHERITING FROM zcl_05_animal_dnavas
  PUBLIC
  FINAL
  CREATE PUBLIC .
      PUBLIC SECTION.
        METHODS caminar REDEFINITION .

        METHODS rugir RETURNING VALUE(r_rugir) TYPE string.
      PROTECTED SECTION.
      PRIVATE SECTION.
    ENDCLASS.

    CLASS zcl_05_leon_dnavas IMPLEMENTATION.
      METHOD caminar.
        r_valor = 'El león camina....'.
      ENDMETHOD.
      METHOD rugir.
        r_rugir = 'Grrrr...!'.
      ENDMETHOD.

    ENDCLASS.
