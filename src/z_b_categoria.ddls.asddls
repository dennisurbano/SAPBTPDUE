@AbapCatalog.sqlViewName: 'ZV_CATEGORIA'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Categoría'
define view Z_B_CATEGORIA
  as select from ztb_catego_2017
{
  key bi_categ    as BiCateg,
      descripcion as Descripcion
}
