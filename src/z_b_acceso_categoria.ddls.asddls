@AbapCatalog.sqlViewName: 'ZV_ACCESO_CATEGO'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - AccesoCategoría'
define view Z_B_ACCESO_CATEGORIA
  as select from ztb_acc_ctg_2017
{
  key bi_categ    as BiCateg,
  key tipo_acceso as TipoAcceso
}
