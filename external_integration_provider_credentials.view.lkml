view: external_integration_provider_credentials {
  sql_table_name: public.external_integration_provider_credentials ;;

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

  dimension: credentials {
    type: string
    sql: ${TABLE}.credentials ;;
  }

  dimension: external_integration_provider_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.external_integration_provider_id ;;
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

  dimension: shop_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.shop_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      shop.name,
      shop.id,
      external_integration_provider.display_name,
      external_integration_provider.id,
      external_integration_provider.name
    ]
  }
}
