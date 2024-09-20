CLASS zcl_library_loading_data DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_library_loading_data IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    DATA: lt_acc_ctg_2017 TYPE TABLE OF ztb_acc_ctg_2017,
          lt_catego_2017  TYPE TABLE OF ztb_catego_2017,
          lt_cliente_2017 TYPE TABLE OF ztb_cliente_2017,
          lt_clt_lib_2017 TYPE TABLE OF ztb_clt_lib_2017,
          lt_libros_2017  TYPE TABLE OF ztb_libros_2017.

** Libros **
    lt_libros_2017 = VALUE #(
    ( id_libro = '0000000001' bi_categ = 'A' titulo = 'Paco Yunque' autor = 'César Vallejo' editorial = 'Planeta' idioma = 'S' paginas = '150' precio = '20.0' moneda = 'PEN' formato = 'T' url =
    'https://www.ellibrototal.com/testLtotal/CARATULAS/libros/2020/1/14980.jpg' )
    ).

    DELETE FROM ztb_libros_2017.
    INSERT ztb_libros_2017 FROM TABLE @lt_libros_2017.

    out->write( sy-dbcnt ).
    out->write( 'ztb_libros_2017 data inserted successfully!' ).


** Acceso Categoría **
    lt_acc_ctg_2017 = VALUE #(
    ( bi_categ = 'A' tipo_acceso = 'X' )
    ).

    DELETE FROM ztb_acc_ctg_2017.
    INSERT ztb_acc_ctg_2017 FROM TABLE @lt_acc_ctg_2017.

    out->write( sy-dbcnt ).
    out->write( 'ztb_acc_ctg_2017 data inserted successfully!' ).

** Categoría **
    lt_catego_2017 = VALUE #(
    ( bi_categ = 'A' descripcion = 'Categoría A' )
    ).

    DELETE FROM ztb_catego_2017.
    INSERT ztb_catego_2017 FROM TABLE @lt_catego_2017.

    out->write( sy-dbcnt ).
    out->write( 'ztb_catego_2017 data inserted successfully!' ).

** Clientes **
    lt_cliente_2017 = VALUE #(
    ( id_cliente = 'C000000001' tipo_acceso = 'X' nombre = 'Dennis' apellidos = 'Urbano Eusebio' email = 'dnnisurb@gmail.com' url = 'www.google.com' )
    ).

    DELETE FROM ztb_cliente_2017.
    INSERT ztb_cliente_2017 FROM TABLE @lt_cliente_2017.

    out->write( sy-dbcnt ).
    out->write( 'ztb_cliente_2017 data inserted successfully!' ).

** Cliente Libro **
    lt_clt_lib_2017 = VALUE #(
    ( id_cliente = 'C000000001' id_libro = '0000000001' )
    ).

    DELETE FROM ztb_clt_lib_2017.
    INSERT ztb_clt_lib_2017 FROM TABLE @lt_clt_lib_2017.

    out->write( sy-dbcnt ).
    out->write( 'ztb_clt_lib_2017 data inserted successfully!' ).

  ENDMETHOD.
ENDCLASS.
