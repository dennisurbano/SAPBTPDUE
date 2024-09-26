@AbapCatalog.sqlViewName: 'ZV_CLIENTES'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Clientes'
@Metadata.allowExtensions: true
define view Z_B_CLIENTE
  as select from ztb_cliente_2017 as Clientes
    inner join   ztb_clt_lib_2017 as ClientesLibros on ClientesLibros.id_cliente = Clientes.id_cliente
{
  key ClientesLibros.id_libro as IdLibro,
  key Clientes.id_cliente     as IdCliente,
  key Clientes.tipo_acceso    as TipoAcceso,
      Clientes.nombre         as Nombre,
      Clientes.apellidos      as Apellidos,
      Clientes.email          as Email,
      Clientes.url            as Url
}
