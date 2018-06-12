view: shipment_history {
  sql_table_name: public.shipment_history ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: action {
    type: number
    sql: ${TABLE}.action ;;
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

  dimension: object_id {
    type: number
    sql: ${TABLE}.object_id ;;
  }

  dimension: object_type {
    type: number
    sql: ${TABLE}.object_type ;;
  }

  dimension: parent_id {
    type: number
    sql: ${TABLE}.parent_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
