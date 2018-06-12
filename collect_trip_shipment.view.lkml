view: collect_trip_shipment {
  sql_table_name: public.collect_trip_shipment ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: collect_trip_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.collect_trip_id ;;
  }

  dimension: shipment_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.shipment_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, shipment.id, collect_trip.id]
  }
}
