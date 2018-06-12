view: platform {
  sql_table_name: public.platform ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: fallback_apikey {
    type: string
    sql: ${TABLE}.fallback_apikey ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: options {
    type: string
    sql: ${TABLE}.options ;;
  }

  dimension: salesforce_identification {
    type: string
    sql: ${TABLE}.salesforce_identification ;;
  }

  dimension: vat_country {
    type: string
    sql: ${TABLE}.vat_country ;;
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
      account.count,
      api_key.count,
      _bak_api_key_type_0.count,
      brackets.count,
      prices.count,
      shipment_volume.count,
      shop.count
    ]
  }
}
