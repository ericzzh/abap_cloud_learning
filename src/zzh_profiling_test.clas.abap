CLASS zzh_profiling_test DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .


  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zzh_profiling_test IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    DATA(conn) = lcl_data=>get_connections(  ).

    LOOP AT conn INTO DATA(lw_conn).
      DATA(from) = lcl_data=>get_airport_city( i_aireport_id = lw_conn-airport_from_id ).
      DATA(to) = lcl_data=>get_airport_city( i_aireport_id = lw_conn-airport_to_id ).
      out->write( |from: { from }, to { to }| ).
    ENDLOOP.
  ENDMETHOD.

ENDCLASS.


