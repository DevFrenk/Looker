view: category_section {
  sql_table_name: public.category_section ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: category_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.category_id ;;
  }

  dimension: count_by_shipment {
    type: yesno
    sql: ${TABLE}.count_by_shipment ;;
  }

  dimension: group_by_price {
    type: yesno
    sql: ${TABLE}.group_by_price ;;
  }

  dimension: parent_id {
    type: number
    sql: ${TABLE}.parent_id ;;
  }

  dimension: show_creation_date {
    type: yesno
    sql: ${TABLE}.show_creation_date ;;
  }

  dimension: specify {
    type: yesno
    sql: ${TABLE}.specify ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: weight {
    type: number
    sql: ${TABLE}.weight ;;
  }

  measure: count {
    type: count
    drill_fields: [id, category.name, category.id]
  }
}
