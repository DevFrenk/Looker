view: invoice_history {
  sql_table_name: public.invoice_history ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: additional_info {
    type: string
    sql: ${TABLE}.additional_info ;;
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

  dimension: event {
    type: string
    sql: ${TABLE}.event ;;
  }

  dimension: invoice_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.invoice_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, invoice.id]
  }
}
