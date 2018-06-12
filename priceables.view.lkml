view: priceables {
  sql_table_name: public.priceables ;;

  dimension: priceable_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.priceable_id ;;
  }

  dimension: price_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.price_id ;;
  }

  dimension: priceable_type {
    type: string
    sql: ${TABLE}.priceable_type ;;
  }

  measure: count {
    type: count
    drill_fields: [priceable_id, prices.id]
  }
}
