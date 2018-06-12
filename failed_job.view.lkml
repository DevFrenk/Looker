view: failed_job {
  sql_table_name: public.failed_job ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: connection {
    type: string
    sql: ${TABLE}.connection ;;
  }

  dimension: exception {
    type: string
    sql: ${TABLE}.exception ;;
  }

  dimension_group: failed {
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
    sql: ${TABLE}.failed_at ;;
  }

  dimension: payload {
    type: string
    sql: ${TABLE}.payload ;;
  }

  dimension: queue {
    type: string
    sql: ${TABLE}.queue ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
