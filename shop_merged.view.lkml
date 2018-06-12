view: shop_merged {
  sql_table_name: public.shop_merged ;;

  dimension: account_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.account_id ;;
  }

  dimension: shop_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.shop_id ;;
  }

  measure: count {
    type: count
    drill_fields: [account.id, account.username, shop.name, shop.id]
  }
}
