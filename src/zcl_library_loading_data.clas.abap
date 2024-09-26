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
    ( id_libro = '0000000002' bi_categ = 'A' titulo = 'Cien años de soledad' autor = 'Gabriel García Márquez' editorial = 'Mundo' idioma = 'S' paginas = '300' precio = '80.0' moneda = 'PEN' formato = 'T' url =
    'https://images.cdn3.buscalibre.com/fit-in/360x360/61/8d/618d227e8967274cd9589a549adff52d.jpg' )
    ( id_libro = '0000000003' bi_categ = 'C' titulo = 'Don Quijote de la Mancha' autor = 'Miguel de Cervantes' editorial = 'Satélite' idioma = 'S' paginas = '1200' precio = '170.0' moneda = 'PEN' formato = 'T' url =
    'https://ellector.com.pa/cdn/shop/products/don-quijote-de-la-mancha-col-oro-cervantes-253173.jpg?v=1696463740' )
    ( id_libro = '0000000004' bi_categ = 'C' titulo = 'Hamlet' autor = 'William Shakespeare' editorial = 'BrithishPrint' idioma = 'E' paginas = '736' precio = '50.0' moneda = 'GBP' formato = 'T' url =
    'https://images.cdn1.buscalibre.com/fit-in/360x360/c1/42/c1428aeabcdfe88c36b82f8c25eb9b77.jpg' )
    ( id_libro = '0000000005' bi_categ = 'B' titulo = 'Frankenstein' autor = 'Mary W. Shelley' editorial = 'Zombie' idioma = 'E' paginas = '736' precio = '38.0' moneda = 'USD' formato = 'T' url =
    'https://images.cdn1.buscalibre.com/fit-in/360x360/9a/e8/9ae837a621fdc1ad2d8a39d94017dfcf.jpg' )
    ).

    DELETE FROM ztb_libros_2017.
    INSERT ztb_libros_2017 FROM TABLE @lt_libros_2017.

    out->write( sy-dbcnt ).
    out->write( 'ztb_libros_2017 data inserted successfully!' ).


** Acceso Categoría **
    lt_acc_ctg_2017 = VALUE #(
    ( bi_categ = 'A' tipo_acceso = 'X' )
    ( bi_categ = 'B' tipo_acceso = 'X' )
    ( bi_categ = 'C' tipo_acceso = 'X' )
    ).

    DELETE FROM ztb_acc_ctg_2017.
    INSERT ztb_acc_ctg_2017 FROM TABLE @lt_acc_ctg_2017.

    out->write( sy-dbcnt ).
    out->write( 'ztb_acc_ctg_2017 data inserted successfully!' ).

** Categoría **
    lt_catego_2017 = VALUE #(
    ( bi_categ = 'A' descripcion = 'Categoría A' )
    ( bi_categ = 'B' descripcion = 'Categoría B' )
    ( bi_categ = 'C' descripcion = 'Categoría C' )
    ( bi_categ = 'D' descripcion = 'Categoría D' )
    ).

    DELETE FROM ztb_catego_2017.
    INSERT ztb_catego_2017 FROM TABLE @lt_catego_2017.

    out->write( sy-dbcnt ).
    out->write( 'ztb_catego_2017 data inserted successfully!' ).

** Clientes **
    lt_cliente_2017 = VALUE #(
    ( id_cliente = 'C000000001' tipo_acceso = 'X' nombre = 'Dennis' apellidos = 'Urbano Eusebio' email = 'dnnisurb@gmail.com' url = 'www.google.com' )
    ( id_cliente = 'C000000002' tipo_acceso = 'X' nombre = 'Pepe' apellidos = 'Perez' email = 'pperez@gmail.com' url = 'www.google.com' )
    ( id_cliente = 'C000000003' tipo_acceso = 'X' nombre = 'Maria' apellidos = 'Carpio' email = 'mcarpio@gmail.com' url = 'www.google.com' )
    ( id_cliente = 'C000000004' tipo_acceso = 'X' nombre = 'Josefina' apellidos = 'Quijada' email = 'jquijada@gmail.com' url = 'www.google.com' )
    ).

    DELETE FROM ztb_cliente_2017.
    INSERT ztb_cliente_2017 FROM TABLE @lt_cliente_2017.

    out->write( sy-dbcnt ).
    out->write( 'ztb_cliente_2017 data inserted successfully!' ).

** Cliente Libro **
    lt_clt_lib_2017 = VALUE #(
    ( id_cliente = 'C000000001' id_libro = '0000000001' )
    ( id_cliente = 'C000000002' id_libro = '0000000001' )
    ( id_cliente = 'C000000002' id_libro = '0000000002' )
    ( id_cliente = 'C000000003' id_libro = '0000000001' )
    ( id_cliente = 'C000000003' id_libro = '0000000002' )
    ( id_cliente = 'C000000003' id_libro = '0000000003' )
    ( id_cliente = 'C000000004' id_libro = '0000000001' )
    ( id_cliente = 'C000000004' id_libro = '0000000002' )
    ( id_cliente = 'C000000004' id_libro = '0000000003' )
    ( id_cliente = 'C000000004' id_libro = '0000000004' )
    ).

    DELETE FROM ztb_clt_lib_2017.
    INSERT ztb_clt_lib_2017 FROM TABLE @lt_clt_lib_2017.

    out->write( sy-dbcnt ).
    out->write( 'ztb_clt_lib_2017 data inserted successfully!' ).

  ENDMETHOD.
ENDCLASS.
