view: collect_trip {
  sql_table_name: public.collect_trip ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: carrier_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.carrier_id ;;
  }

  dimension: carrier_reference {
    type: string
    sql: ${TABLE}.carrier_reference ;;
  }

  dimension: collect_trip_planning_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.collect_trip_planning_id ;;
  }

  dimension: collect_trip_schedule_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.collect_trip_schedule_id ;;
  }

  dimension_group: collect_window_end_datetime {
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
    sql: ${TABLE}.collect_window_end_datetime ;;
  }

  dimension_group: collect_window_start_datetime {
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
    sql: ${TABLE}.collect_window_start_datetime ;;
  }

  dimension: contact_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.contact_id ;;
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
    sql: ${TABLE}.deleted ;;
  }

  dimension: height {
    type: number
    sql: ${TABLE}.height ;;
  }

  dimension: length {
    type: number
    sql: ${TABLE}.length ;;
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

  dimension: order_reference {
    type: string
    sql: ${TABLE}.order_reference ;;
  }

  dimension: package_count {
    type: number
    sql: ${TABLE}.package_count ;;
  }

  dimension: retry {
    type: number
    sql: ${TABLE}.retry ;;
  }

  dimension: shop_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.shop_id ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: weight {
    type: number
    sql: ${TABLE}.weight ;;
  }

  dimension: width {
    type: number
    sql: ${TABLE}.width ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      collect_trip_planning.id,
      collect_trip_schedule.id,
      shop.name,
      shop.id,
      contact.id,
      contact.first_name,
      contact.last_name,
      carrier.name,
      carrier.id,
      collect_trip_shipment.count,
      invoice_item.count
    ]
  }
}
