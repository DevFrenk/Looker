view: account_shipment_option_price {
  sql_table_name: public.account_shipment_option_price ;;

  dimension: account_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.account_id ;;
  }

  dimension: base_price {
    type: number
    sql: ${TABLE}.base_price ;;
  }

  dimension: shipment_option_price_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.shipment_option_price_id ;;
  }

  measure: count {
    type: count
    drill_fields: [account.id, account.username, shipment_option_price.name, shipment_option_price.id]
  }
}
