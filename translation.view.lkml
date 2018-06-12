view: translation {
  sql_table_name: public.translation ;;

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

  dimension: language {
    type: string
    sql: ${TABLE}.language ;;
  }

  dimension_group: modified {
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
    sql: ${TABLE}.modified ;;
  }

  dimension: reference_name {
    type: string
    sql: ${TABLE}.reference_name ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }

  measure: count {
    type: count
    drill_fields: [id, reference_name, category.name, category.id]
  }
}
