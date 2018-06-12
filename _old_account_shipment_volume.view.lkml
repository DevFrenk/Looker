view: _old_account_shipment_volume {
  sql_table_name: public._old_account_shipment_volume ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: account_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.account_id ;;
  }

  dimension: base_price {
    type: number
    sql: ${TABLE}.base_price ;;
  }

  dimension: bracket {
    type: number
    sql: ${TABLE}.bracket ;;
  }

  dimension: carrier_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.carrier_id ;;
  }

  dimension: cc {
    type: string
    sql: ${TABLE}.cc ;;
  }

  dimension: package_type {
    type: number
    sql: ${TABLE}.package_type ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: shipment_type {
    type: number
    sql: ${TABLE}.shipment_type ;;
  }

  dimension: weight_price {
    type: number
    sql: ${TABLE}.weight_price ;;
  }

  measure: count {
    type: count
    drill_fields: [id, carrier.name, carrier.id, account.id, account.username]
  }
}
