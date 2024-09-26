@AbapCatalog.sqlViewName: 'ZV_LIBROS'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Libros'
@Metadata.allowExtensions: true
define view Z_B_LIBROS
  as select from    ztb_libros_2017   as Libros
    inner join      ztb_catego_2017   as Categorias on Libros.bi_categ = Categorias.bi_categ
    left outer join Z_B_CLIENTE_LIBRO as Ventas     on Libros.id_libro = Ventas.IdLibro
  association [0..*] to Z_B_CLIENTE as _Clientes on $projection.IdLibro = _Clientes.IdLibro
{
  key Libros.id_libro  as IdLibro,
      Libros.titulo    as Titulo,
      Libros.bi_categ  as BiCateg,
      Libros.autor     as Autor,
      Libros.editorial as Editorial,
      Libros.idioma    as Idioma,
      Libros.paginas   as Paginas,
      Libros.precio    as Precio,
      Libros.moneda    as Moneda,
      Libros.formato   as Formato,
      Libros.url       as ImagenLibro,
      case
        when Ventas.Ventas < 1 then 0
        when Ventas.Ventas = 1 then 1
        when Ventas.Ventas = 2 then 2
        when Ventas.Ventas = 3 then 3
        else 0
        end            as Ventas,
      _Clientes
}
