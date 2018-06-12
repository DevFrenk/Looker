view: pcdata_migrations {
  sql_table_name: public.pcdata_migrations ;;

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
    sql: ${TABLE}.created ;;
  }

  dimension: delivery_id {
    type: string
    sql: ${TABLE}.deliveryId ;;
  }

  dimension: delivery_source {
    type: string
    sql: ${TABLE}.deliverySource ;;
  }

  dimension: delivery_target {
    type: string
    sql: ${TABLE}.deliveryTarget ;;
  }

  dimension: delivery_type {
    type: string
    sql: ${TABLE}.deliveryType ;;
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

  dimension: product_code {
    type: string
    sql: ${TABLE}.productCode ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.productName ;;
  }

  measure: count {
    type: count
    drill_fields: [id, product_name]
  }
}
