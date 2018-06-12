connection: "myparcelshadowdb"

include: "*.view.lkml"         # include all views in this project
include: "*.dashboard.lookml"  # include all dashboards in this project


explore: shipments {
  join: shop {
    sql_on: ${shipments.shopid} = ${shop.id} ;;
    relationship: many_to_one
  }

}
