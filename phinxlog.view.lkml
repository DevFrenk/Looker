view: phinxlog {
  sql_table_name: public.phinxlog ;;

  dimension: breakpoint {
    type: yesno
    sql: ${TABLE}.breakpoint ;;
  }

  dimension_group: end {
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
    sql: ${TABLE}.end_time ;;
  }

  dimension: migration_name {
    type: string
    sql: ${TABLE}.migration_name ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}.start_time ;;
  }

  dimension: version {
    type: number
    sql: ${TABLE}.version ;;
  }

  measure: count {
    type: count
    drill_fields: [migration_name]
  }
}
