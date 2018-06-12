view: carrier {
  sql_table_name: public.carrier ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      name,
      account_shipment_volume.count,
      account_shipment_volume_old.count,
      account_shipment_weight_volume.count,
      _bak_account_shipment_volume.count,
      _bak_shipment_volume.count,
      carrier_options.count,
      collect_trip.count,
      collect_trip_schedule.count,
      _old_account_shipment_volume.count,
      _old_shipment_volume.count,
      prices.count,
      shipment_carrier.count,
      shipment_option_price.count,
      shipment_volume.count
    ]
  }
}
