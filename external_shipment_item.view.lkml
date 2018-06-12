view: external_shipment_item {
  sql_table_name: public.external_shipment_item ;;

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

  dimension: external_integration_provider_reference {
    type: string
    sql: ${TABLE}.external_integration_provider_reference ;;
  }

  dimension: external_shipment_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.external_shipment_id ;;
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

  dimension: process_status_id {
    type: string
    sql: ${TABLE}.process_status_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, external_shipment.id]
  }
}
