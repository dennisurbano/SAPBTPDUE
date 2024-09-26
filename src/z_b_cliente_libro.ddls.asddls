@AbapCatalog.sqlViewName: 'ZV_CLIENTE_LIBRO'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - ClienteLibro'
define view Z_B_CLIENTE_LIBRO
  as select from ztb_clt_lib_2017
{
  key id_libro                     as IdLibro,
      count( distinct id_cliente ) as Ventas
}
group by
  id_libro
