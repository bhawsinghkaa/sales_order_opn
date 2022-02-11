@AbapCatalog.sqlViewName: 'ZV_VKROG_VH'
@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Value Help'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view ZV_VKROG
  as select from zdt_vkorg
{
  key vkorg as Vkorg
}
