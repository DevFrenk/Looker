view: category {
  sql_table_name: public.category ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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

  dimension: system {
    type: yesno
    sql: ${TABLE}.system ;;
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
      category_section.count,
      invoice_category.count,
      invoice_item.count,
      invoice_sections.count,
      translation.count
    ]
  }
}
