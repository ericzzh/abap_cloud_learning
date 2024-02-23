*"* use this source file for the definition and implementation of
*"* local helper classes, interface definitions and type
*"* declarations

CLASS lcl_data DEFINITION CREATE PRIVATE.

  PUBLIC SECTION.
    TYPES tt_connections TYPE STANDARD TABLE OF /dmo/connection
        WITH NON-UNIQUE KEY carrier_id connection_id.

    CLASS-METHODS:
      get_connections RETURNING VALUE(r_res) TYPE tt_connections,
      get_airport_city IMPORTING i_aireport_id TYPE /dmo/airport_id
                       RETURNING VALUE(r_res)  TYPE /dmo/city.

  PROTECTED SECTION.
  PRIVATE SECTION.
    class-METHODS: private_test.

ENDCLASS.

CLASS lcl_data IMPLEMENTATION.

  METHOD get_airport_city.
    SELECT SINGLE FROM /dmo/airport
        FIELDS city
        WHERE airport_id = @i_aireport_id
        INTO @r_res.
  ENDMETHOD.

  METHOD get_connections.
    SELECT * FROM /dmo/connection INTO TABLE @r_res.
  ENDMETHOD.

  METHOD private_test.

  ENDMETHOD.

ENDCLASS.
