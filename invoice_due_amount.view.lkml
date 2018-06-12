view: invoice_due_amount {
  sql_table_name: public.invoice_due_amount ;;

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

  dimension: due_amount_after {
    type: number
    sql: ${TABLE}.due_amount_after ;;
  }

  dimension: invoice_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.invoice_id ;;
  }

  dimension: invoice_item_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.invoice_item_id ;;
  }

  dimension: invoice_status_after {
    type: number
    sql: ${TABLE}.invoice_status_after ;;
  }

  dimension: invoice_status_before {
    type: number
    sql: ${TABLE}.invoice_status_before ;;
  }

  dimension: transaction_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.transaction_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, invoice.id, transaction.id, invoice_item.id]
  }
}
