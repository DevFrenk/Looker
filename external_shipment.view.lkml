view: external_shipment {
  sql_table_name: public.external_shipment ;;

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

  dimension: external_integration_provider_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.external_integration_provider_id ;;
  }

  dimension: external_integration_provider_reference {
    type: string
    sql: ${TABLE}.external_integration_provider_reference ;;
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

  dimension: shipment_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.shipment_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      shipment.id,
      external_integration_provider.display_name,
      external_integration_provider.id,
      external_integration_provider.name,
      external_shipment_item.count
    ]
  }
}
