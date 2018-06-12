view: products {
  sql_table_name: public.products ;;

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
    sql: ${TABLE}.created_at ;;
  }

  dimension_group: deleted {
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
    sql: ${TABLE}.deleted_at ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: ledger_number {
    type: number
    sql: ${TABLE}.ledger_number ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: no_vat {
    type: yesno
    sql: ${TABLE}.no_vat ;;
  }

  dimension: product_category_id {
    type: number
    sql: ${TABLE}.product_category_id ;;
  }

  dimension: product_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.product_type_id ;;
  }

  dimension: system {
    type: yesno
    sql: ${TABLE}.system ;;
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
    sql: ${TABLE}.updated_at ;;
  }

  dimension: vat {
    type: number
    sql: ${TABLE}.vat ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      name,
      product_types.name,
      product_types.id,
      invoice_item.count,
      invoice_sections.count,
      prices.count
    ]
  }
}
