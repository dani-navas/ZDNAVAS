INTERFACE zif_company_dnavas
  PUBLIC .
    METHODS asignar_company EXPORTING E_city TYPE STRING
                            RETURNING VALUE(r_value) type string.
ENDINTERFACE.
