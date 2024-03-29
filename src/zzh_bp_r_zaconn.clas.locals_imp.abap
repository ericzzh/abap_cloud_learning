CLASS LHC_ZZH_R_ACONN DEFINITION INHERITING FROM CL_ABAP_BEHAVIOR_HANDLER.
  PRIVATE SECTION.
    METHODS:
      GET_GLOBAL_AUTHORIZATIONS FOR GLOBAL AUTHORIZATION
        IMPORTING
           REQUEST requested_authorizations FOR Connection
        RESULT result,
      CheckSemanticKey FOR VALIDATE ON SAVE
            IMPORTING keys FOR Connection~CheckSemanticKey.
ENDCLASS.

CLASS LHC_ZZH_R_ACONN IMPLEMENTATION.
  METHOD GET_GLOBAL_AUTHORIZATIONS.
  ENDMETHOD.
  METHOD CheckSemanticKey.
  ENDMETHOD.

ENDCLASS.
