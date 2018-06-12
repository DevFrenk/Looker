view: awsdms_apply_exceptions {
  sql_table_name: public.awsdms_apply_exceptions ;;

  dimension: error {
    type: string
    sql: ${TABLE}.ERROR ;;
  }

  dimension_group: error {
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
    sql: ${TABLE}.ERROR_TIME ;;
  }

  dimension: statement {
    type: string
    sql: ${TABLE}.STATEMENT ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}.TABLE_NAME ;;
  }

  dimension: table_owner {
    type: string
    sql: ${TABLE}.TABLE_OWNER ;;
  }

  dimension: task_name {
    type: string
    sql: ${TABLE}.TASK_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [table_name, task_name]
  }
}
