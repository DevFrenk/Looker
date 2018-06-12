view: shipment_carrier_tracktrace {
  sql_table_name: public.shipment_carrier_tracktrace ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: additional_info {
    type: string
    sql: ${TABLE}.additional_info ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
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

  dimension: shipment_carrier_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.shipment_carrier_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, shipment_carrier.id]
  }
}
