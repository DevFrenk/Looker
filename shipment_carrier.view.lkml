view: shipment_carrier {
  sql_table_name: public.shipment_carrier ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: additional_options {
    type: string
    sql: ${TABLE}.additional_options ;;
  }

  dimension: barcode {
    type: string
    sql: ${TABLE}.barcode ;;
  }

  dimension: carrier_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.carrier_id ;;
  }

  dimension: final_tracktrace_status {
    type: yesno
    sql: ${TABLE}.final_tracktrace_status ;;
  }

  dimension: parent_id {
    type: number
    sql: ${TABLE}.parent_id ;;
  }

  dimension: shipment_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.shipment_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, shipment.id, carrier.name, carrier.id, shipment_carrier_tracktrace.count]
  }
}
