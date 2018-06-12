view: collect_trip_price {
  sql_table_name: public.collect_trip_price ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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

  dimension: max_packages {
    type: number
    sql: ${TABLE}.max_packages ;;
  }

  dimension: min_packages {
    type: number
    sql: ${TABLE}.min_packages ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: subscription {
    type: yesno
    sql: ${TABLE}.subscription ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}.updated ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
