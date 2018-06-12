view: return_shipment_link {
  sql_table_name: public.return_shipment_link ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: account_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.account_id ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: email_label {
    type: string
    sql: ${TABLE}.email_label ;;
  }

  dimension_group: expire {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.expire ;;
  }

  dimension: generated_shipment_id {
    type: number
    sql: ${TABLE}.generated_shipment_id ;;
  }

  dimension: hash {
    type: string
    sql: ${TABLE}.hash ;;
  }

  dimension: related_shipment_id {
    type: number
    sql: ${TABLE}.related_shipment_id ;;
  }

  dimension: shop_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.shop_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, account.id, account.username, shop.name, shop.id]
  }
}
